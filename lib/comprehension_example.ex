defmodule ComprehensionExample do
  @moduledoc """
  Documentation for comprehensions examples.
  """

  @doc """
  ComprehensionExample.prime_span

  In the last exercise of Chapter 7, Lists and Recursion, you wrote a span
  function. Use it and list comprehensions to return a list of the prime numbers
  from 2 to n.

  ## Parameters
     - `from` Integer
     - `to` Integer

  ## Examples

    iex> ComprehensionExample.prime_span(0, 12)
    [2, 3, 5, 7, 11]

  """
  def prime_span(from, to),
    do: for n <- ListRecursionExample.span(from, to), n != 1, n == 2 or _prime?(n), do: n

  defp _prime?(n),
    do: !Enum.find(2..(n-1), &Integer.gcd(n, &1) != 1)

  @doc """
  ComprehensionExample.calc_tax

  The Pragmatic Bookshelf has offices in Texas (TX) and North Carolina (NC), so
  we have to charge sales tax on orders shipped to these states. The rates can
  be expressed as a keyword list (I wish it were that simple.…):

  Write a function that takes both lists and returns a copy of the orders, but
  with an extra field, total_amount, which is the net plus sales tax. If a
  shipment is not to NC or TX, there’s no tax applied.

  ## Parameters
     - Keyword list (state taxes)
     - Keyword list (orders)

  """
  # TODO, what are the typespecs for BigDecimal?
  @spec calc_tax([NC: float(), TX: float()], [ [id: pos_integer(), ship_to: atom(), net_amount: float() ] ]) :: [ [id: pos_integer(), ship_to: atom(), net_amount: float(), total_amount: number() ] ]
  def calc_tax(tax_rates, orders)
  def calc_tax(tax_rates, orders), do: {tax_rates, orders}

end
