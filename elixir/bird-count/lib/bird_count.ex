defmodule BirdCount do
  def today([]), do: nil

  def today([count | _]) do
    count
  end

  def increment_day_count([]), do: [1]

  def increment_day_count([count | rest]) do
    [count + 1 | rest]
  end

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | _]), do: true
  def has_day_without_birds?([_ | rest]), do: has_day_without_birds?(rest)

  def total([]), do: 0

  def total([count | rest]) do
    total(rest) + count
  end

  def busy_days([]), do: 0

  def busy_days([count | rest]) when count >= 5 do
    busy_days(rest) + 1
  end

  def busy_days([_ | rest]) do
    busy_days(rest)
  end
end
