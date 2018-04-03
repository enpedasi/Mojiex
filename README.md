# Mojiex

Japanese strings - Wide/Half "Kana" characters Conversion Library for Elixir lang

全角半角変換ライブラリ

## Installation

```elixir
def deps do
  [
    {:mojiex, github: "enpedasi/mojiex"},    
  ]
end
```

## Usage


```elixir
Mojiex.convert("ＡＢＣＤ　０１２３４あいうアイウABCD 01234ｱｲｳ",{:hk, :zk})
|> Mojiex.convert({:kk, :hg})
"ＡＢＣＤ　０１２３４あいうあいうABCD 01234あいう"            
```

- Mojiex.convert( ``source string``,  {``from``, ``to`` })

combination of {``from``, ``to`` }

|  |  |  |  |  |
|---|---|---|---|---|
|:zk  |全角カタカナ  |↔|:hk | 半角カタカナ |
|:ze  |全角英数      |↔|:he | 半角英数 |
|:he  |ひらがな      |↔|:kk | カタカナ |
|:zs  |全角SPACE     |↔|:hs | 半角SPACE |


## License
Copyright(c) 2018 enpedasi
Licensed under the MIT license.
