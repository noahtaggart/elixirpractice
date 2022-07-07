defmodule Sample.Enum do
  def first([]), do: nil
  def first([head |_]), do: head

  def map([], _), do: []
  def map([hd | tl], f) do
    [f.(hd) | map(tl, f)]
  end
end
