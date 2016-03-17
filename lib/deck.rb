require 'card'

class Deck
  attr_accessor :cards

  def self.populate
    cards = []

    suits = [:clubs, :diamonds, :spades, :hearts]

    (2..14).each do |value|
      suits.each do |suit|
        cards << Card.new(value, suit)
      end
    end

    cards.shuffle
  end

  def initialize
    @cards = Deck.populate
  end

  def deal
    cards.pop
  end

  def number_of_cards
    cards.length
  end

end
