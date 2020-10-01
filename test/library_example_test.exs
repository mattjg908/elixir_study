defmodule LibraryExampleTest do
  use ExUnit.Case, async: true
  doctest LibraryExample

  describe "#float_to_string" do
    test "it uses an Erlang library to convert a float to a string with two decimal digits" do
      assert LibraryExample.float_to_string(1/3) === '0.33'
    end
  end

  describe "#system_env" do
    test "it uses an Elixir library to get an operating system variable" do
      assert LibraryExample.system_env("SHELL") === "/bin/zsh"
    end
  end

  describe "#file_ext" do
    test "it uses an Elixir library to get a file extension from a filepath string" do
      assert LibraryExample.file_ext("dave/test.exs") === ".exs"
    end
  end
end
