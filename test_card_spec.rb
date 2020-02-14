require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../card_game')
require_relative('../card')

class CardGameTest < Minitest::Test

  def setup
    @card1 = Value.new("hearts", 1)
    @card2 = Value.new("clubs" 1)
    @card3 = Value.new("hearts" 7)
    @card4 = Value.new("diamonds" 3)




  def test_card_suit()
    assert_equal("hearts", @card3.each)
  end

  def check_for_ace()
    assert_equal(1, @card1.each)
  end
