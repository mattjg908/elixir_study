defmodule CharlistExample do
  @moduledoc """
  Module for Charlist examples.
  """

  @accepted_ascii_char_codes 32..126

  @doc """
  CharlistExample.space_through_tilde?

  Write a function that returns true if a single-quoted string contains only
  printable ASCII characters (space through tilde). 

  ## Parameters
     - Charlist (charlist)

  ## Examples

  iex> CharlistExample.space_through_tilde?('cat')
  true

  iex> CharlistExample.space_through_tilde?('¾')
  false

  """
  @spec space_through_tilde?(nonempty_charlist()) :: boolean()
  def space_through_tilde?(charlist) do
    Enum.all?(charlist, fn code ->
      Enum.member?(@accepted_ascii_char_codes, code)
    end)
  end

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
  def anagram?(tax_rates, orders), do: 2

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
  3

  iex> CharlistExample.calculate('1 - 2')
  -1

  """
  @spec calculate(nonempty_charlist()) :: number()
  def calculate(charlist), do: false

end
