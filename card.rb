
class Card
  # attr_reader :suit, :value * no attr_reader needed

  def initialize(suit, value)
    @suit = suit
    # @value = value; * no semi-colon
  end

end
