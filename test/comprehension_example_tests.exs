defmodule ComprehensionExampleTest do
  use ExUnit.Case, async: true
  doctest ComprehensionExample

  describe "prime_span/2" do
    test "Returns a list of prime numbers from 2 to n" do
      assert ComprehensionExample.prime_span(1, 6) === [2,3,5]
    end
  end

  describe "calc_tax/2" do
    setup do
      [
        orders: [
          [id: 123, ship_to: :NC, net_amount: 100.00],
          [id: 124, ship_to: :OK, net_amount: 35.50],
          [id: 125, ship_to: :TX, net_amount: 24.00],
          [id: 126, ship_to: :TX, net_amount: 44.80],
          [id: 127, ship_to: :NC, net_amount: 25.00],
          [id: 128, ship_to: :MA, net_amount: 10.00],
          [id: 129, ship_to: :CA, net_amount: 102.00],
          [id: 130, ship_to: :NC, net_amount: 50.00]
        ],
        tax_rates: [NC: 0.075, TX: 0.08]
      ]
    end

    test "Returns a list of orders with an extra field, total_amount, which is equal to the order's net_amount plus sales tax`", %{tax_rates: tax_rates, orders: orders} do
      for order <- ComprehensionExample.calc_tax(tax_rates, orders) do
        tax_rate = Keyword.get(tax_rates, order[:ship_to], 0)
        assert order[:total_amount] == order[:net_amount] * (1 + tax_rate)
      end
    end
  end

end
