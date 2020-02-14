require('minitest/autorun')
require('minitest/reporters')
require_relative('card_game')
require_relative('card')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


class CardGameTest < Minitest::Test

  def setup()
    @card1 = Card.new("hearts", 7)
    @card2 = Card.new("clubs", 1)
    @card3 = Card.new("hearts", 7)
    @card4 = Card.new("diamonds", 3)

    @cardgame = CardGame.new

    @cards = [@card1, @card2, @card3, @card4]
  end


  def test_card_suit()
    assert_equal("hearts", @card3.suit)
  end

  def test_check_for_value()
    assert_equal(3, @card4.value)
  end

  def test_check_for_ace()
    assert_equal(true, @cardgame.check_for_ace(@card2))
  end

  def test_check_for_ace_false()
    assert_equal(false, @cardgame.check_for_ace(@card3))
  end

  def test_highest_card()
    assert_equal(@card1, @cardgame.highest_card(@card1, @card2))
  end

  def test_cards_total()
    assert_equal("You have a total of 18", @cardgame.cards_total(@cards))
  end



end
