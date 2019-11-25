defmodule ListRecursionExample do
  @moduledoc """
  Documentations for ListRecursionExample.
  """

  @doc """
  ListRecursionExample.mapsum

  ## Parameters
    -List of integers
    -fun Function

    ## Examples

      iex> ListRecursionExample.mapsum([1, 2, 3], &(&1 * &1))
      14
  """

  def mapsum([], _), do: 0
  def mapsum([head | tail], func), do: func.(head) + mapsum(tail, func)

  @doc """
  ListRecursionExample.max

  ## Parameters
    -List

    ## Examples

      iex> ListRecursionExample.max([1,3,2,4,5,5,5,0,8,7,7,7])
      8
  """

  def max([]), do: []
  def max([x]), do: x
  def max([index0 | [index1 | tail]]) when index0 > index1, do: max([index0 | tail])
  def max([_index0 | tail]), do: max(tail)

  @doc """
  ListRecursionExample.caesar

  ## Parameters
    -List
    -n Integer

    97 represents 'a', [97]
    26 represents the length from `a` to `z`

    ## Examples

      iex> ListRecursionExample.caesar('ryvkve', 13)
      'elixir'
  """

  def caesar([], _), do: []
  def caesar([h | t], n), do: [rem(h + n - 97, 26) + 97 | caesar(t, n)]
end
