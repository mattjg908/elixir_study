defmodule ElixirStudy do
  @moduledoc """
  Documentation for ElixirStudy.
  """

  @doc """
  FizzBuzz.

  ## Examples

      iex> ElixirStudy.fizz_buzz(0,0,1)
      "FizzBuzz"
      iex> ElixirStudy.fizz_buzz(0,1,2)
      "Fizz"
      iex> ElixirStudy.fizz_buzz(1,0,2)
      "Buzz"
      iex> ElixirStudy.fizz_buzz(1,1,2)
      2
  """
  def fizz_buzz(0,0,_), do: "FizzBuzz"
  def fizz_buzz(0,_,_), do: "Fizz"
  def fizz_buzz(_,0,_), do: "Buzz"
  def fizz_buzz(_,_,c), do: c

  fizz_buzz_as_annonymous = fn
    0,0,_ -> "FizzBuzz"
    0,_,_ -> "Fizz"
    _,0,_ -> "Buzz"
    _,_,c -> c
  end
end
