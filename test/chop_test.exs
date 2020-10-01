defmodule ChopTest do
  use ExUnit.Case, async: true
  doctest Chop

  import ExUnit.CaptureIO

  describe "#guess" do
    test "it returns the number passed in as the first argument" do
      assert Chop.guess(6, 1..12) === 6
    end
  end

  describe "#generate_guess" do
    test "it returns the middle of a given range" do
      assert Chop.generate_guess(1..10) == 5
    end

    test "has IO output with middle of given range for each time it is called" do
      execute_generate_guess = fn ->
        Chop.generate_guess(2..4)
      end
      assert capture_io(execute_generate_guess) =~ "Is it 3\n"
    end
  end

  describe "#check_guess" do
    # Not sure how to test this, follow up with Mike
  end
end
