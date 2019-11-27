defmodule ListRecursionExampleTest do
  use ExUnit.Case
  doctest ListRecursionExample

  describe "#mapsum" do
    test "it sums all numbers from 1 to the given number" do
      assert ListRecursionExample.mapsum([1, 2, 3, 4], &(&1 * &1)) === 30
    end
  end

  describe "#max" do
    test "it finds the element with the maximum value in a list (codepoints)" do
      assert ListRecursionExample.max(['c', 'c', 'a', 'z', 'w', 't']) === 'z'
    end

    test "it finds the element with the maximum value in a list (chars)" do
      assert ListRecursionExample.max(["c", "c", "a", "z", "w", "t"]) === "z"
    end
  end

  describe "#caesar" do
    test "it adds an innteger n to every item in a codepoint list" do
      assert ListRecursionExample.caesar('ryvkve', 13) === 'elixir'
    end

    test "it can wrap values" do
      assert ListRecursionExample.caesar('z', 27) === 'a'
      assert ListRecursionExample.caesar('z', 26) === 'z'
      assert ListRecursionExample.caesar('z', 52) === 'z'
    end
  end

  describe "#span" do
    test "returns a list of the numbers from `from` up to `to`" do
      assert ListRecursionExample.span(1, 4) === [1, 2, 3, 4]
    end
  end
end
