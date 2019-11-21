defmodule RecursionExample do
  @moduledoc """
  Documentation for RecursionExample.
  """

  @doc """
  RecursionExample.sum

  ## Parameters
    -n Natural Number

  ## Examples

      iex> RecursionExample.sum(3)
      6
  """

  def sum(1), do: 1
  def sum(n), do: n + sum(n - 1)

  @doc """
  RecursionExample.gcd

  ## Parameters
    -x Natural Number
    -y Natural Number

  ## Examples

      iex> RecursionExample.gcd(10,20)
      10
  """

  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x,y))
end
