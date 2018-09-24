defmodule MojiexTest do
  use PowerAssert
  # use ExUnit.Case
  # doctest Mojiex

  test "Basic" do
    assert Mojiex.convert("ＡＢＣＤ　０１２３４あいうアイウABCD 01234ｱｲｳ", {:ze, :he}) ==
             "ABCD　01234あいうアイウABCD 01234ｱｲｳ"

    assert Mojiex.convert("ＡＢＣＤ　０１２３４あいうアイウABCD 01234ｱｲｳ", {:he, :ze}) ==
             "ＡＢＣＤ　０１２３４あいうアイウＡＢＣＤ ０１２３４ｱｲｳ"

    assert Mojiex.convert("ＡＢＣＤ　０１２３４あいうアイウABCD 01234ｱｲｳ", {:hg, :kk}) ==
             "ＡＢＣＤ　０１２３４アイウアイウABCD 01234ｱｲｳ"

    assert Mojiex.convert("ＡＢＣＤ　０１２３４あいうアイウABCD 01234ｱｲｳ", {:kk, :hg}) ==
             "ＡＢＣＤ　０１２３４あいうあいうABCD 01234ｱｲｳ"

    assert Mojiex.convert("ＡＢＣＤ　０１２３４あいうアイウABCD 01234ｱｲｳ", {:zk, :hk}) ==
             "ＡＢＣＤ　０１２３４あいうｱｲｳABCD 01234ｱｲｳ"

    assert Mojiex.convert("ＡＢＣＤ　０１２３４あいうアイウABCD 01234ｱｲｳ", {:hk, :zk}) ==
             "ＡＢＣＤ　０１２３４あいうアイウABCD 01234アイウ"

    assert Mojiex.convert("ＡＢＣＤ　０１２３４あいうアイウABCD 01234ｱｲｳ", {:hk, :zk})
           |> Mojiex.convert({:kk, :hg}) == "ＡＢＣＤ　０１２３４あいうあいうABCD 01234あいう"

    assert Mojiex.convert("ＡＢＣＤ　０１２３４あいうアイウABCD 01234ｱｲｳ", {:zs, :hs}) ==
             "ＡＢＣＤ ０１２３４あいうアイウABCD 01234ｱｲｳ"

    assert Mojiex.convert("ＡＢＣＤ　０１２３４あいうアイウABCD 01234ｱｲｳ", {:hs, :zs}) ==
             "ＡＢＣＤ　０１２３４あいうアイウABCD　01234ｱｲｳ"
  end
end
