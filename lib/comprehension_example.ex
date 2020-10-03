defmodule ComprehensionExample do
  @moduledoc """
  Documentation for comprehensions examples.
  """

  @doc """
  ComprehensionExample.span

  In the last exercise of Chapter 7, Lists and Recursion, you wrote a span
  function. Use it and list comprehensions to return a list of the prime numbers
  from 2 to n.

  ## Parameters
     - `from` Integer
     - `to` Integer

  ## Examples

    iex> ComprehensionExample.span(0, 10)
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  """
  def span(from, to) when is_integer(from) and is_integer(to), do: do_span(from, to)
  defp do_span(from, to) when from > to, do: raise "This function only counts up, #{from} is more than #{to}."
  #defp do_span(from, to) when from < to, do: [ from | span(from + 1, to) ]
  #defp do_span(to, to), do: [to]

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

end
