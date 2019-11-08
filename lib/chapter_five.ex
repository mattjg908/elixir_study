defmodule ChapterFive do
  @moduledoc """
  Documentation for ChapterFive.
  """

  @doc """
  FizzBuzz.

  ## Parameters
    - 3 Integers

  ## Examples

      iex> ChapterFive.fizz_buzz(0,0,1)
      "FizzBuzz"
      iex> ChapterFive.fizz_buzz(0,1,2)
      "Fizz"
      iex> ChapterFive.fizz_buzz(1,0,2)
      "Buzz"
      iex> ChapterFive.fizz_buzz(1,1,2)
      2
  """
  def fizz_buzz(0,0,_), do: "FizzBuzz"
  def fizz_buzz(0,_,_), do: "Fizz"
  def fizz_buzz(_,0,_), do: "Buzz"
  def fizz_buzz(_,_,c), do: c

  fizz_buzz_as_anonymous = fn
    0,0,_ -> "FizzBuzz"
    0,_,_ -> "Fizz"
    _,0,_ -> "Buzz"
    _,_,c -> c
  end

  @doc """
  FizzBuzzSentence.

  ## Parameters
    - n: Integer

  ## Examples

      iex> ChapterFive.fizz_buzz_sentence(10)
      "Buzz"
      iex> ChapterFive.fizz_buzz_sentence(13)
      13
      iex> ChapterFive.fizz_buzz_sentence(16)
      16
  """
  def fizz_buzz_sentence(n) do
    fizz_buzz(rem(n,3), rem(n,5), n)
  end
end
