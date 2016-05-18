defmodule MctestTest do
  use ExUnit.Case
  doctest Mctest

  test "encryption" do
    {:ok, bin } = Mcrypt.block_encrypt "awesome stuff", :rijndael_256, :cbc, String.duplicate("0", 32), String.duplicate("0", 32)
    IO.inspect bin
    dec = Mcrypt.block_decrypt bin, :rijndael_256, :cbc, String.duplicate("0", 32), String.duplicate("0", 32)
    IO.inspect dec
  end
end
