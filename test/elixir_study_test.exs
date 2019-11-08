defmodule ElixirStudyTest do
  use ExUnit.Case
  doctest ElixirStudy

  test "When first two args are 0, it returns 'FizzBuzz'" do
    assert ElixirStudy.fizz_buzz(0,0,2) == "FizzBuzz"
  end

  test "When first arg is 0, it returns 'Fizz'" do
    assert ElixirStudy.fizz_buzz(0,1,2) == "Fizz"
  end

  test "When thens econd arg is 0, it returns 'Buzz'" do
    assert ElixirStudy.fizz_buzz(1,0,2) == "Buzz"
  end

  test "When neither of the first two args are 0, it returns the third arg" do
    assert ElixirStudy.fizz_buzz(1,1,2) == 2
  end
end
