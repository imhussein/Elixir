defmodule Cards do
  # Create Card
  def create_card do
    values = ["PHP", "Javascript", "HTML", "CSS"]
    frameworks = ["Laravel", "Angular", "PUG", "SCSS"]
    cards = for lang <- values do
      for framework <- frameworks do
        "#{lang}:#{framework}"
      end
    end
    List.flatten(cards)
  end
  # Shuffle Cards
  def shuffle(cards) do
    Enum.shuffle(cards)
  end
  # Contains
  def contains?(cards, card) do
    Enum.member?(cards, card)
  end
end