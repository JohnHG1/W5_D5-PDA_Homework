
class Card
  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value; * no semi-colon needed
  end

end
