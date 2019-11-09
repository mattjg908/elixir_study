defmodule ChapterFiveTest do
  use ExUnit.Case
  doctest ChapterFive

  describe "#fizz_buzz" do
    test "When first two args are 0, it returns 'FizzBuzz'" do
      assert ChapterFive.fizz_buzz(0,0,2) === "FizzBuzz"
    end

    test "When first arg is 0, it returns 'Fizz'" do
      assert ChapterFive.fizz_buzz(0,1,2) === "Fizz"
    end

    test "When thens econd arg is 0, it returns 'Buzz'" do
      assert ChapterFive.fizz_buzz(1,0,2) === "Buzz"
    end

    test "When neither of the first two args are 0, it returns the third arg" do
      assert ChapterFive.fizz_buzz(1,1,2) === 2
    end
  end

  # The following tests look weird but they are meant to specifically satisfy
  # the results for arguments given by the book
  describe "#fizz_buzz_sentence, when arg is" do
    test "10" do
      assert ChapterFive.fizz_buzz_sentence(10) === "Buzz"
    end
    test "11" do
      assert ChapterFive.fizz_buzz_sentence(11) === 11
    end
    test "12" do
      assert ChapterFive.fizz_buzz_sentence(12) === "Fizz"
    end
    test "13" do
      assert ChapterFive.fizz_buzz_sentence(13) === 13
    end
    test "14" do
      assert ChapterFive.fizz_buzz_sentence(14) === 14
    end
    test "15" do
      assert ChapterFive.fizz_buzz_sentence(15) === "FizzBuzz"
    end
    test "16" do
      assert ChapterFive.fizz_buzz_sentence(16) === 16
    end
  end

	describe "#closure_concat" do
    test "it concatenates two words and a space" do
      assert ChapterFive.closure_concat('Elixir', 'Rocks') === "Elixir Rocks"
		end
	end
end
