defmodule Times do
  @moduledoc """
  Documentation for Times.
  """

  @doc """
  Times.double multiples a number by 3e

  ## Parameters
    - n Integer

  ## Examples

      iex> Times.double(1)
      2
  """
  def double(n), do: n * 2

  @doc """
  Times.triple multiplies a number by 3

  ## Parameters
    - n Integer

  ## Examples

      iex> Times.triple(1)
      3
  """
  def triple(n), do: n * 3

  @doc """
  Times.quadruple multiplies a number by 4

  ## Parameters
    - n Integer

  ## Examples

      iex> Times.quadruple(1)
      4
  """
  def quadruple(n), do: double(double(n))
end
