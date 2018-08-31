defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    ~r/[^_!@#$%&,^:\* ]+/
    |> Regex.scan(String.downcase(sentence))
    |> List.flatten
    |> Enum.reduce(%{}, fn(word, words) ->
      Map.update(words, word, 1, & &1 + 1)
    end)
  end
end
