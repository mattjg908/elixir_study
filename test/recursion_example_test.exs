defmodule RecursionExampleTest do
  use ExUnit.Case
  doctest RecursionExample

  describe "#sum" do
    test "it sums all numbers from 1 to the given number" do
      assert RecursionExample.sum(4) === 10
    end
  end

	describe "RecursionExample.gcd/2" do
    assert RecursionExample.gcd(49, 28) === 7
	end
end
