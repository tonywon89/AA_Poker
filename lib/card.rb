class Card
  attr_reader :suit, :value

  SUITS = {
    diamonds: '♢',
    clubs: '♧',
    hearts: '♡',
    spades: '♤'
  }

  VALUES = {
    11 => "J",
    12 => "Q",
    13 => "K",
    14 => "A"
  }
  def initialize(value, suit)
    @suit = suit
    @value = value
  end

  def to_s
    face_value = value > 10 ? VALUES[value] : value
    "#{face_value} of #{SUITS[suit]}"
  end
end
