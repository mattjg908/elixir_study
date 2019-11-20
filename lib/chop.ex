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
  def guess(secret, range) do
    generate_guess(range)
    |> check_guess(secret, range)
  end

  def generate_guess(min..max) do
    guess = div(min + max, 2)
    IO.puts "Is it #{guess}"
    guess
  end

  def check_guess(guess, secret, _r) when secret == guess, do: secret
  def check_guess(guess, secret, min.._max) when secret < guess do
    new_range = min..guess-1
    generate_guess(new_range) |> check_guess(secret, new_range)
  end
  def check_guess(guess, secret, _min..max) when secret > guess do
    new_range = guess+1..max
    generate_guess(new_range) |> check_guess(secret, new_range)
  end
end
