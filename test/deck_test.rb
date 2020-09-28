require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # a deck should be 52 cards
    # it should have values of 1-13 with each suit
    # 2.  Edge cases


  describe "You can create a deck instance" do
    let(:deck) { Deck.new }

    it "can be created" do
      expect(deck).must_be_instance_of Deck
    end

    it "the deck should have 52 cards" do
      expect(deck.cards.count).must_equal 52
    end

    end
end
