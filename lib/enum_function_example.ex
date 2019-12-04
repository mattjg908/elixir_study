#https://github.com/MachinesAreUs/programming_elixir/blob/master/ch7/chapter_7.exs

defmodule EnumFunctionExample do
  @moduledoc """
  Documentations for EnumFunctionExample.
  """

  @doc """
  EnumFunctionExample.enum_all?

  ## Parameters
    -     Array
    -func Function which returns a boolean value

    ## Examples

      iex> EnumFunctionExample.enum_all?([1, 2, 3, 0], &(&1 < 2))
      false
  """

  def enum_all?([], _), do: []
  def enum_all?([h], func), do: func.(h)
  def enum_all?([h | t], func), do: func.(h) and enum_all?(t, func)

  @doc """
  EnumFunctionExample.enum_each

  ## Parameters
    -     Array
    -func Function which returns a boolean value

    ## Examples

      iex> EnumFunctionExample.enum_each([1, 2, 3, 0], &(&1 + 1))
      :ok
  """

  def enum_each([], _), do: raise Enum.EmptyError
  def enum_each([h], func) do
    func.(h)
    :ok
  end
  def enum_each([h | t], func) do
    func.(h)
    enum_each(t, func)
  end

  @doc """
  EnumFunctionExample.enum_filter

  ## Parameters
    -     Array
    -func Function which returns a boolean value

    ## Examples

      iex> EnumFunctionExample.enum_filter([1, 2, 3, 4], &(rem(&1,2) == 0))
      [2, 4]
  """

  def enum_filter([], _), do: []
  def enum_filter([h | t], func) do
    if func.(h) do
      [h | enum_filter(t, func)]
    else
      enum_filter(t, func)
    end
  end

  @doc """
  EnumFunctionExample.enum_split

  ## Parameters
    -      List of integers
    -count Integer used to determine where an array should be split

    ## Examples

      iex> EnumFunctionExample.enum_split([1,2,3,4], 3)
      {[1,2,3], [4]}

      iex> EnumFunctionExample.enum_split([1,2,3,4], -3)
      {[1],[2,3,4]}
  """

  def enum_split(list, count)
  def enum_split(l, c) when c >= 0, do: _enum_split([[], l], c)
  def enum_split(l, c), do: _enum_split([[], l], length(l) + c)
  defp _enum_split([a, [b|t]], c) when length(a) < c, do: _enum_split([[b|a], t], c)
  defp _enum_split([a, b], _c), do: {a |> Enum.reverse, b}

  @doc """
  EnumFunctionExample.enum_take

  ## Parameters
    -     List
    -n number of elements in list to take

		## Examples

      iex> EnumFunctionExample.enum_take([1,2,3,4], 3)
      [1,2,3]

      iex> EnumFunctionExample.enum_take([1,2,3,4], -3)
      [2,3,4]
  """

  def enum_take(list, n), do: _enum_take(list, [], n)
  def _enum_take([h|t], acc, n) when length(acc) < n do
	  _enum_take(t, [h | acc], n)
  end
  def _enum_take([h|t], _acc, n) when length([h|t]) > abs(n) do
    _enum_take(t, [], n)
	end
  def _enum_take(_list, acc, n) when n >= 0, do: Enum.reverse acc
  def _enum_take(list, _acc, _n), do: list

  @doc """
  EnumFunctionExample.enum_flatten

  ## Parameters
    - List

		## Examples

		   iex> MyList.flatten([1, [2, 3, [4]], 5, [[[6]]]])
		   [1,2,3,4,5,6]
  """
  def enum_flatten(list), do: _enum_flatten(list)
  def _enum_flatten(_list), do: true
end
