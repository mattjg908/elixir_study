defmodule TimesTest do
  use ExUnit.Case
  doctest Times

  def n, do: 2

  describe "#double" do
    test "it multiplies a number by n" do
      assert Times.double(n()) === 4
    end
  end

	describe "#triple" do
    test "it multiplies a number by 3" do
      assert Times.triple(n()) === 6
    end
  end

	describe "#quadruple" do
    test "it multiplies a number by 4" do
      assert Times.quadruple(n()) === 8
    end
  end
end
