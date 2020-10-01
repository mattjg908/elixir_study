defmodule EnumFunctionExampleTest do
  use ExUnit.Case, async: true
  doctest EnumFunctionExample

  describe "#enum_all?" do
    test "it implements the #all? Enum function without library functions nor list comprehensions" do
      assert EnumFunctionExample.enum_all?([2, 4, 6], fn x -> rem(x, 2) == 0 end)
      refute EnumFunctionExample.enum_all?([2, 3, 4], fn x -> rem(x, 2) == 0 end)
    end
  end

  # There is better way of testing this, TODO- test this better
  describe "#enum_each" do
    test "it implements the #each Enum function without library functions nor list comprehensions" do
      assert EnumFunctionExample.enum_each([2, 4, 6], &(&1/2)) === :ok
    end
  end

  describe "#enum_filter" do
    test "it implements the #filter Enum function without library functions nor list comprehensions" do
      assert EnumFunctionExample.enum_filter([2, 4, 6, 8, 10], &(&1 >= 6)) === [6, 8, 10]
    end
  end

  describe "#enum_split" do
    test "it implements the #split Enum function without library functions nor list comprehensions" do
      assert EnumFunctionExample.enum_split([1], -1) === {[],[1]}
      assert EnumFunctionExample.enum_split([1], 0) === {[],[1]}
      assert EnumFunctionExample.enum_split([1], 1) === {[1],[]}

      assert EnumFunctionExample.enum_split([1,2], 1) === {[1],[2]}

      assert EnumFunctionExample.enum_split([1,2,3,4], 0) === {[], [1,2,3,4]}
      assert EnumFunctionExample.enum_split([1,2,3,4], 1) === {[1], [2,3,4]}
      assert EnumFunctionExample.enum_split([1,2,3,4], 2) === {[1,2],[3,4]}
      assert EnumFunctionExample.enum_split([1,2,3,4], 4) === {[1,2,3,4], []}
      assert EnumFunctionExample.enum_split([1,2,3,4], 5) === {[1,2,3,4], []}

      assert EnumFunctionExample.enum_split([1,2,3,4], -1) === {[1,2,3],[4]}
      assert EnumFunctionExample.enum_split([1,2,3], -5) === {[],[1,2,3]}
      assert EnumFunctionExample.enum_split([1,2,3], -9) === {[],[1,2,3]}
      assert EnumFunctionExample.enum_split([1,2,3], -100) === {[],[1,2,3]}
    end
  end

  describe "#enum_take" do
    test "it implements the #take Enum function without library functions nor list comprehensions" do
      assert EnumFunctionExample.enum_take([1,2,3], -4) == [1,2,3]
      assert EnumFunctionExample.enum_take([1,2,3], -1) == [3]
      assert EnumFunctionExample.enum_take([1,2,3], 0) == []
      assert EnumFunctionExample.enum_take([1,2,3], 10) == [1,2,3]
    end
  end

  describe "#enum_flatten" do
    test "it implements the #flatten Enum function without library functions nor list comprehensions" do
      assert EnumFunctionExample.enum_flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]]) == [1,2,3,4,5,6]
    end
  end
end
