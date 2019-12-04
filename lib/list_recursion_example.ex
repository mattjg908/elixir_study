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
  def max([a, b | t]) when a > b, do: max([a | t])
  def max([_head | t]), do: max(t)

  @doc """
  ListRecursionExample.caesar

  ## Parameters
    - Charlist
    -n Integer

    97 represents 'a', [97]
    26 represents the length from `a` to `z`

    ## Examples

      iex> ListRecursionExample.caesar('ryvkve', 13)
      'elixir'
  """

  def caesar(charlist, offset \\ 42)
  def caesar([], _), do: []
  def caesar([h | t], offset), do: [rem(h + offset - 97, 26) + 97 | caesar(t, offset)]

  @doc """
  ListRecursionExample.span

  ## Parameters
     -from Integer
     -to Integer

  ## Examples

    iex> ListRecursionExample.span(0, 10)
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  """

  def span(from, to) when is_integer(from) and is_integer(to), do: do_span(from, to)
  defp do_span(from, to) when from > to, do: raise "This function only counts up, #{from} is more than #{to}."
  defp do_span(from, to) when from < to, do: [ from | span(from + 1, to) ]
  defp do_span(to, to), do: [to]
end
