defmodule Roman do
  @doc """
  Convert the number to a roman number.
  """
  @spec numerals(pos_integer) :: String.t()
  def numerals(number) do
    numerals(number, "")
  end

  def numerals(0, roman), do: roman
  def numerals(num, roman) do
    {new_letter, to_subtract} = convert(num)
    numerals(num - to_subtract, roman <> new_letter)
  end

  def convert(n) when n >= 1000, do: {"M", 1000}
  def convert(n) when n >= 900, do: {"CM", 900}
  def convert(n) when n >= 500, do: {"D", 500}
  def convert(n) when n >= 400, do: {"CD", 400}
  def convert(n) when n >= 100, do: {"C", 100}
  def convert(n) when n >= 90, do: {"XC", 90}
  def convert(n) when n >= 50, do: {"L", 50}
  def convert(n) when n >= 40, do: {"XL", 40}
  def convert(n) when n >= 10, do: {"X", 10}
  def convert(n) when n >= 9, do: {"IX", 9}
  def convert(n) when n >= 5, do: {"V", 5}
  def convert(n) when n >= 4, do: {"IV", 4}
  def convert(n) when n >= 1, do: {"I", 1}
end
