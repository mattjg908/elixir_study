defmodule CharlistExampleTest do
  use ExUnit.Case, async: true
  doctest CharlistExample

  describe "space_through_tilde?/1" do
    @tag :pending
    test "Returns true if a single-quoted string contains only printable ASCII characters (space through tilde)" do
      assert CharlistExample.space_through_tilde?('cat and dogs! 0123~')
    end

    @tag :pending
    test "Returns false if a single-quoted string does not contain only printable ASCII characters (space through tilde)" do
      refute CharlistExample.space_through_tilde?('cat Änd dogs! 0123~')
    end
  end

  describe "anagram?/2" do
    @tag :pending
    test "Returns true if the arguments are anagrams"do
      assert CharlistExample.anagram?("Listen", "Silent")
    end

    @tag :pending
    test "Returns false if the arguments are not anagrams"do
      refute CharlistExample.anagram?("Banana", "Ramma")
    end
  end

  describe "calculate/1" do
    @tag :pending
    test "Adds two numbers in a Charlist when the '+' is in the Charlist" do
      assert 150 == CharlistExample.calculate('123 + 27')
    end

    @tag :pending
    test "Subtracts two numbers in a Charlist when the '-' is in the Charlist" do
      assert 96 == CharlistExample.calculate('123 - 27')
    end
  end

end
