defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove([_ | tail]) do
    tail
  end

  def first([head | _]) do
    head
  end

  def count([]), do: 0

  def count([_head | tail]) do
    count(tail) + 1
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end
