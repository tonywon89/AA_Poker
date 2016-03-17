require 'rspec'
require 'card'

describe Card do
  let(:value) { 6 }
  let(:suit) { :diamonds }
  subject(:card) { Card.new(value, suit)}

  describe "#initialize" do
    it "sets a value and a suit" do
      expect(card.value).to eq(value)
      expect(card.suit).to eq(suit)
    end
  end

  describe "#to_s" do
    it "renders values and suits of cards" do
      expect(card.to_s).to eq("6 of ♢")
    end

    it "renders face cards and aces" do
      card = Card.new(13, :spades)
      expect(card.to_s).to eq("K of ♤")
    end
  end

end
