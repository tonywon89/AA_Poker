require_relative 'deck'

class Game
  attr_reader :deck, :pot

  def initialize
    @deck = Deck.new
    @pot = 0
  end
end
