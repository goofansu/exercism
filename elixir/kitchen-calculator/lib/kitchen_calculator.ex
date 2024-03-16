defmodule KitchenCalculator do
  def get_volume({_, volume}) do
    volume
  end

  def to_milliliter({unit, volume}) do
    volume_in_milliliter =
      cond do
        unit == :cup -> volume * 240
        unit == :fluid_ounce -> volume * 30
        unit == :teaspoon -> volume * 5
        unit == :tablespoon -> volume * 15
        true -> volume
      end

    {:milliliter, volume_in_milliliter}
  end

  def from_milliliter({:milliliter, volume}, unit) do
    volume_in_unit =
      cond do
        unit == :cup -> volume / 240
        unit == :fluid_ounce -> volume / 30
        unit == :teaspoon -> volume / 5
        unit == :tablespoon -> volume / 15
        true -> volume
      end

    {unit, volume_in_unit}
  end

  def convert({unit, volume}, unit), do: {unit, volume}

  def convert(volume_pair, unit) do
    milliliter = to_milliliter(volume_pair)
    from_milliliter(milliliter, unit)
  end
end
