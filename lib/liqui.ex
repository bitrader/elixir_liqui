defmodule Liqui do
  @moduledoc """
  Documentation for Liqui.
  """

  use HTTPoison.Base

  @allowed_currencies_to [
    "usdt", "btc", "eth"
  ]

  @allowed_currencies_from [
    "ant",  "bat",  "btc",  "eth", "mgo",  "snm",  "gnt",   "bnt",   "icn",   "round",
    "myst", "vsl",  "bcap", "1st", "edg",  "taas", "cfi",   "wings", "qrl",   "ptoy",
    "ltc",  "tkn",  "time", "plu", "hmq",  "gup",  "lun",   "rep",   "waves", "incnt",
    "rlc",  "dash", "ant",  "mln", "trst", "gno",  "sngls", "dct"
  ]

  @base_url "https://api.liqui.io/api/3"
  @doc """
  Tick currency value using from/to currencies

  Returns `JSON`

  ## Parameters
    - from_currency: from currency of conversion
    - to_currency:   to currency of conversion

  ## Examples

    iex> BlinkTrade.ticker(:eth, :usdt)
    {:ok,
     %{"avg" => 326.55136416, "buy" => 326.05034716, "high" => 333.0,
       "last" => 326.05034716, "low" => 320.10272832, "sell" => 328.87503738,
       "updated" => 1498278593, "vol" => 122863.88933311866,
       "vol_cur" => 377.26711401}}

  """
  def ticker(from_currency, to_currency) do
    from = Atom.to_string(from_currency)
    to   = Atom.to_string(to_currency)

    validate_not_equal(from, to)
    validate_member(from, @allowed_currencies_from)
    validate_member(to,   @allowed_currencies_to)

    with {:ok, result} <- get("#{@base_url}/ticker/#{from}_#{to}"),
         {:ok, json  } <- Poison.decode(result.body),
         do: {:ok, json["#{from}_#{to}"]}
  end

  defp validate_not_equal(value1, value2) do
    if value1 == value2, do: raise ArgumentError, "You can't tick similar currencies"
  end

  defp validate_member(currency, currencies) do
    if not Enum.member?(currencies, currency), do: raise ArgumentError, "#{currency} not found in [#{Enum.join(currencies, ", ")}]"
  end

end
