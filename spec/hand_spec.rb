require 'rspec'
require 'hand'

describe Hand do
  let(:diamond_2) { double("card", value: 2, suit: :diamonds)}
  let(:diamond_3) { double("card", value: 3, suit: :diamonds)}
  let(:diamond_4) { double("card", value: 4, suit: :diamonds)}
  let(:diamond_5) { double("card", value: 5, suit: :diamonds)}
  let(:diamond_6) { double("card", value: 6, suit: :diamonds)}
  let(:diamond_7) { double("card", value: 7, suit: :diamonds)}
  let(:diamond_8) { double("card", value: 8, suit: :diamonds)}

  let(:spade_8)   { double("card", value: 8, suit: :spades  )}

  let(:straight) { Hand.new([diamond_6, spade_8, diamond_4, diamond_5, diamond_7]) }
  let(:flush) { Hand.new([diamond_2, diamond_3, diamond_4, diamond_5, diamond_8]) }
  let(:straight_flush) { Hand.new([diamond_2, diamond_3, diamond_4, diamond_5, diamond_6]) }

  describe "#straight_flush?" do
    it "returns true when the hand is a straight flush" do
      expect(straight_flush.straight_flush?).to be true
      expect(straight_flush.category).to eq(:straight_flush)
    end

    it "returns false when the hand is not a straight flush" do
      expect(flush.straight_flush?).to be false
    end
  end

  describe "#flush?" do
    it "returns true when the hand is a flush" do
      expect(flush.flush?).to be true
    end

    it "returns false when the hand is not a flush" do
      expect(straight.flush?).to be false
    end
  end

  describe "#straight?" do
    it "returns true when the hand is a straight" do
      expect(straight.straight?).to be true
    end

    it "returns false when the hand is not a straight" do
      expect(flush.straight?).to be false
    end
  end
  # describe "#initialize" do
  #
  # end



end
