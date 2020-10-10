defmodule CharlistExampleTest do
  use ExUnit.Case, async: true
  doctest CharlistExample

  describe "space_through_tilde?/1" do
    test "Returns true if a single-quoted string contains only printable ASCII characters (space through tilde)" do
      assert CharlistExample.space_through_tilde?('cat and dogs! 0123~')
    end

    test "Returns false if a single-quoted string does not contain only printable ASCII characters (space through tilde)" do
      refute CharlistExample.space_through_tilde?('cat Änd dogs! 0123~')
    end
  end

  describe "anagram?/2" do
    test "Returns true if the arguments are anagrams"do
      assert CharlistExample.anagram?("Listen", "Silent")
    end

    test "Returns false if the arguments are not anagrams"do
      refute CharlistExample.anagram?("Banana", "Ramma")
    end
  end

  describe "calculate/1" do
    test "Multiplies two numbers in a Charlist when '*' is in the Charlist" do
      assert 300.0 == CharlistExample.calculate('100 * 3')
    end

    test "Divides two numbers in a Charlist when '/' is in the Charlist" do
      assert 8.0 == CharlistExample.calculate('64 / 8')
    end
  end

end
