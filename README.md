# Liqui
An unofficial lib of [Liqui](http://liqui.io) API for Elixir

## How to use

Bellow have some examples how to use the lib

### ticker(from_currency, to_currency)

```elixir
iex> Liqui.ticker(:eth, :usdt)
{:ok,
  %{"avg" => 326.55136416, "buy" => 326.05034716, "high" => 333.0,
    "last" => 326.05034716, "low" => 320.10272832, "sell" => 328.87503738,
    "updated" => 1498278593, "vol" => 122863.88933311866,
    "vol_cur" => 377.26711401}}
```

## Currencies
These are all of currencies available in Liqui when this lib was developed

### From Currencies

| Code | Currency |
-------|----------|
| ETH  | Ethereum |
| BTC  | Bitcoin |
| LTC  | Litecoin |
| DASH  | Dash |
| DCT  | Decent |
| ICN  | Iconomi |
| GNT  | Golem |
| WINGS  | Wings |
| PLU  | Pluton |
| ROUND  | Round |
| VLS  | vSlice |
| 1ST  | FirstBlood |
| WAVES  | Waves |
| INCNT  | Incent |
| MLN  | Melon |
| TIME  | Time |
| REP  | Augur |
| EDG  | Edgeless |
| RLC  | iExec |
| TRST  | Trustcoin |
| GNO  | Gnosis |
| GUP  | Guppy |
| TAAS  | Taas |
| LUN  | Lunyr |
| TKN  | Tokencard |
| HMQ  | Humaniq |
| BCAP  | BCAP |
| ANT  | Aragon |
| BAT  | Basic Attention Token |
| QRL  | Quantum |
| BNT  | Bancor |
| MGO  | MobileGo (eth) |
| MYST  | Mysterium |
| SNGLS  | SingularDTV |
| PTOY  | Patientory |
| CFI  | Cofoundit |
| SNM  | Sonm |

### To Currencies

| Code | Currency |
-------|----------|
| USDT | Tether USD |
| ETH  | Ethereum |
| BTC  | Bitcoin |

## License
```
Copyright © 2017 Hotaviano Melo <hotaviano@melo.biz>

This work is free. You can redistribute it and/or modify it under the
terms of the GPL License. See the LICENSE file for more details.
```
