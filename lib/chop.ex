defmodule Chop do
  @moduledoc """
  Documentation for Chop.
  """

  @doc """
  Chop.guess

  ## Parameters
    - secret Integer
    - range Range

  ## Examples

      iex> Chop.guess(273, 1..1000)
      273
  """
  def guess(secret, range), do: check_guess(secret, range, generate_guess(range))

  def generate_guess(min..max) do
    guess = div(min + max, 2)
    IO.puts "Is it #{guess}"
    guess
  end

  def check_guess(secret, _r, guess) when secret == guess, do: secret
  def check_guess(secret, min.._max, guess) when secret < guess do
    new_range = min..guess-1
    check_guess(secret, new_range, generate_guess(new_range))
  end
  def check_guess(secret, _min..max, guess) when secret > guess do
    new_range = guess+1..max
    check_guess(secret, new_range, generate_guess(new_range))
  end
end
