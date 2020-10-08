# ElixirStudy

Exercises from "Programming Elixir >= 1.6" by Dave Thomas (not the KFC guy)

# Run all tests
$ mix test

# Run specific tests
$ mix test test/example_test.exs

# Run specific tests w/ Pry debugger
place `require IEx; IEx.pry` wherever you'd like to pause execution
$ iex -S mix test test/example_test.exs

# Run tests w/ TestWatch
$ mix test.watch test/example_test.exs

# Run benchmarks
$ mix run benchmarks/example_benchmark.exs
