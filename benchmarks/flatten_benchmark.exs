defmodule FlattenBenchmark do
  """
  Number of Available Cores: 4
  Available memory: 8 GB
  Elixir 1.7.4
  Erlang 22.2.2

  Benchmark suite executing with the following configuration:
  warmup: 2 s
  time: 5 s
  memory time: 1 s
  parallel: 1
  inputs: example_data
  Estimated total run time: 16 s

  Benchmarking double recursion with input example_data...
  Benchmarking list concatenation with input example_data...

  ##### With input example_data #####
  Name                         ips        average  deviation         median         99th %
  double recursion          2.96 M      338.04 ns  ±4243.23%           0 ns        1000 ns
  list concatenation        2.27 M      440.33 ns  ±5386.06%           0 ns        1000 ns

  Comparison:
  double recursion          2.96 M
  list concatenation        2.27 M - 1.30x slower +102.29 ns

  Memory usage statistics:

  Name                  Memory usage
  double recursion              96 B
  list concatenation           304 B - 3.17x memory usage +208 B

  **All measurements for memory usage were the same**

  """
  def enum_flattena(list), do: _enum_flattena(list, [])
  def _enum_flattena([], acc), do: acc
  def _enum_flattena([h|t], acc) when is_list(h) do
     _enum_flattena(h, _enum_flattena(t, acc))
  end
  def _enum_flattena([h|t], acc), do: _enum_flattena(t, [h |acc])

  def enum_flattenb(list), do: _enum_flattenb(list, [])
  def _enum_flattenb([], acc), do: Enum.reverse(acc)
  def _enum_flattenb([h|t], acc) when is_list(h) do
    _enum_flattenb(h ++ t, acc)
  end
  def _enum_flattenb([h|t], acc), do: _enum_flattenb(t, [h |acc])
end

Benchee.run(
  %{
    "double recursion"   => fn list -> FlattenBenchmark.enum_flattena(list) end,
    "list concatenation" => fn list -> FlattenBenchmark.enum_flattenb(list) end
  },
  memory_time: 1,
  inputs: %{"example_data" => [1, [2, 3, [4]], 5, [[[6]]]]}
)
