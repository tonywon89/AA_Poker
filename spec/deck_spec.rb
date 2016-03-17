require 'rspec'
require 'deck'

describe Deck do
  subject(:deck) { Deck.new }

  describe "#number_of_cards" do
    it "returns the number of cards in the deck" do
      expect(deck.number_of_cards).to eq(52)
    end
  end

  describe "#initialize" do
    it "creates 52 cards" do
      expect(deck.number_of_cards).to eq(52)
    end
  end

  describe "#deal" do
    it "returns a card" do
      expect(deck.deal).to be_a(Card)
    end

    it "removes one card from the deck" do
      deck.deal
      expect(deck.number_of_cards).to eq(51)
    end
  end

end
