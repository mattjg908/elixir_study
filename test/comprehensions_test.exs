defmodule ComprehensionExampleTest do
  use ExUnit.Case, async: true
  doctest ComprehensionExample

  describe "#span/2" do
    test "returns a list of the integers from `from` up to `to`" do
      assert ComprehensionExample.span(1, 4) === [1, 2, 3, 4]
    end
  end

  describe "#calc_tax/2" do
    setup do
      orders = [
        [ id: 123, ship_to: :NC, net_amount: 100.00 ],
        [ id: 124, ship_to: :OK, net_amount: 35.50 ],
        [ id: 125, ship_to: :TX, net_amount: 24.00 ],
        [ id: 126, ship_to: :TX, net_amount: 44.80 ],
        [ id: 127, ship_to: :NC, net_amount: 25.00 ],
        [ id: 128, ship_to: :MA, net_amount: 10.00 ],
        [ id: 129, ship_to: :CA, net_amount: 102.00 ],
        [ id: 130, ship_to: :NC, net_amount: 50.00 ]
      ]

      {:ok, tax_rates: [ NC: 0.075, TX: 0.08 ], orders: orders}
    end

    test "returns a list of orders with an extra field, total_amount, which is equal to the order's net_amount plus sales tax`", {tax_rates: tax_rates, orders: orders} do
      for order <- ComprehensionExample.calc_tax(tax_rates, orders) do
        tax_rate = Keyword.get(tax_rates, order[:ship_to], 0)
        assert order.total_amount == order.net_amount * (1 + tax_rate)
      end
    end
  end
end
