require_relative 'card'

class Hand
  attr_reader :cards
  attr_accessor :category

  def initialize(cards)
    @cards = cards
    categorize_hand
  end

  def categorize_hand
    if straight_flush?
      @category = :straight_flush
    elsif flush?
      @category = :flush
    elsif straight?
      @category = :straight
    else
      @category = :high_card
    end
  end

  def straight_flush?
    straight? && flush?
  end

  def straight?
    sorted_hand = sort_hand
    sorted_hand.take(4).each_with_index do |card, i|
      return false unless card.value + 1 == sorted_hand[i+1].value
    end
    true
  end

  def sort_hand
    cards.sort {|card1, card2| card1.value <=> card2.value}
  end

  def flush?
    suits = cards.first.suit

    cards.all? do |card|
      card.suit == suits
    end
  end


end
