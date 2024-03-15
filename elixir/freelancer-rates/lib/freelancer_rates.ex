defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    8.0 * hourly_rate
  end

  def apply_discount(before_discount, discount) do
    before_discount * (1 - discount / 100)
  end

  def monthly_rate(hourly_rate, discount) do
    hourly_rate
    |> daily_rate()
    |> apply_discount(discount)
    |> Kernel.*(22)
    |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily_rate =
      hourly_rate
      |> daily_rate()
      |> apply_discount(discount)

    Float.floor(budget / daily_rate, 1)
  end
end
