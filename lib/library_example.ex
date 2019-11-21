defmodule LibraryExample do
  @moduledoc """
  Documentation for LibraryExample.
  """

  @doc """
  LibraryExample.float_to_string

  ## Parameters
    -f Float

  ## Examples

      iex> LibraryExample.float_to_string(0.123456)
      '0.12'
  """

  def float_to_string(f) do
    :erlang.float_to_list(f,[{:decimals,2}])
  end

  @doc """
  LibraryExample.system_env

  ## Parameters
    -env_var String

  ## Examples

      iex> LibraryExample.system_env("SHELL")
      "/bin/zsh"
  """

  def system_env(f) do
    System.get_env f
  end

  @doc """
  LibraryExample.file_ext

  ## Parameters
    - filepath_string String

  ## Examples

      iex> LibraryExample.file_ext("dave/test.exs")
      ".exs"
  """

  def file_ext(filepath_string) do
    Path.extname filepath_string
  end

  @doc """
  LibraryExample.current_dir

  """

  def current_dir, do: File.cwd()

  # Find library for converting string containg JSON into Elixir data struct
  # https://hexdocs.pm/json/1.2.1/readme.html

  def shell_command, do: System.cmd("whoami", [])
end
