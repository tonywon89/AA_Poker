require 'rspec'
require 'game'

describe Game do
  subject(:game) { Game.new }
  # let(:deck) { double("deck") }

  describe "#initialize" do
    it "creates a deck"

    it "adds the players"

    it "makes an empty pot" do
      expect(game.pot).to eq(0)
    end
    
    it "sets the current player to player 1"
  end
end
