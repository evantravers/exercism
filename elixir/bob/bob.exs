defmodule Bob do
  @question "Sure."
  @shouting "Whoa, chill out!"
  @shoutingquestion "Calm down, I know what I'm doing!"
  @nothing "Fine. Be that way!"
  @whatevs "Whatever."

  def shouting?(input) do
    allcaps?(input)
  end

  def allcaps?(string) do
    string != String.downcase(string) && string == String.upcase(string)
  end

  def question?(input), do: String.ends_with?(input, "?")

  def silence?(input) do
    "" == String.trim(input)
  end

  def hey(input) do
    cond do
      shouting?(input) && question?(input) -> @shoutingquestion
      question?(input) -> @question
      shouting?(input) -> @shouting
      silence?(input) -> @nothing
      true -> @whatevs
    end
  end
end
