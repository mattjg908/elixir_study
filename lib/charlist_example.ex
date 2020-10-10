defmodule CharlistExample do
  @moduledoc """
  Module for Charlist examples.
  """

  @space_through_tilde_ascii_codes ?\s..?~

  @doc """
  CharlistExample.space_through_tilde?

  Write a function that returns true if a single-quoted string contains only
  printable ASCII characters (space through tilde). 

  ## Parameters
     - Charlist (charlist)

  ## Examples

  iex> CharlistExample.space_through_tilde?(' cat~')
  true

  iex> CharlistExample.space_through_tilde?(' cat¾')
  false

  """
  @spec space_through_tilde?(nonempty_charlist()) :: boolean()
  def space_through_tilde?(charlist),
    do: Enum.all?(charlist, &Enum.member?(@space_through_tilde_ascii_codes, &1))

  @doc """
  CharlistExample.anagram?

  Write an anagram?(word1, word2) that returns true if its parameters
  are anagrams.

  ## Parameters
     - String (first_string)
     - String (second_string)

  ## Examples

  iex> CharlistExample.anagram?("The eyes", "They see")
  true

  iex> CharlistExample.anagram?("What", "ever")
  false

  """
  @spec anagram?(String.t(), String.t()) :: boolean()
  def anagram?(string1, string2) do
    format_for_comparison(string1) == format_for_comparison(string2)
  end

  @spec format_for_comparison(String.t()) :: charlist()
  defp format_for_comparison(string) do
    string
    |> String.trim()
    |> String.downcase()
    |> to_charlist()
    |> Enum.sort()
  end

  @doc """
  CharlistExample.calculate

  (Hard) Write a function that takes a single-quoted string of the
  form number [+-*/] number and returns the result of the
  calculation. The individual numbers do not have leading plus or
  minus signs.

  ## Parameters
     - Charlist (charlist)

  ## Examples

  iex> CharlistExample.calculate('1 + 2')
  3.0

  iex> CharlistExample.calculate('1 - 2')
  -1.0

  """
  @spec calculate(nonempty_charlist()) :: number()
  def calculate(charlist) do
    charlist
    |> parse_charlist
    |> do_calc
  end

  @spec parse_charlist(charlist()) :: tuple()
  defp parse_charlist(charlist) do
    [x, operator, y] =
      charlist
      |> to_string
      |> String.split(" ")

    {string_to_float(x), string_to_fun(operator), string_to_float(y)}
  end

  @spec string_to_float(String.t()) :: float()
  defp string_to_float(number_string) do
    {num, _} = Float.parse(number_string)
    num
  end

  @spec string_to_fun(String.t()) :: fun()
  defp string_to_fun("+"), do: &+/2
  defp string_to_fun("-"), do: &-/2
  defp string_to_fun("*"), do: &*/2
  defp string_to_fun("/"), do: &//2

  # TODO, how to make a List typespec with multiple types?
  @spec do_calc(tuple()) :: number()
  defp do_calc({x, fun, y}), do: fun.(x, y)

end
