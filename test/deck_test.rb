require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # a deck should be 52 cards
    # it should have values of 1-13 with each suit
    # 2.  Edge cases
  let(:deck) { Deck.new }

  describe "Constructor" do
    it "can be instantiated" do
      expect(deck).must_be_instance_of Deck
    end

    it "the deck should have 52 cards" do
      expect(deck.cards.count).must_equal 52
    end
  end

  describe "draw method" do
    it "the draw method can be called" do
      expect(deck).must_respond_to :draw
    end

    it "returns the removed card" do
      expect(deck.draw).must_be_instance_of Card
    end
  end

  describe "shuffle method" do
    it "The shuffle method can be called" do
      expect(deck).must_respond_to :shuffle
    end
  end

  describe "count method" do
    it "returns an integer" do
      expect(deck.count).must_be_instance_of Integer
    end

    it "after a several draws, give the correct number of cards" do
      5.times { deck.draw }
      expect(deck.count).must_equal 47

      # additional 10 cards to be drawn
      10.times { deck.draw }
      expect(deck.count).must_equal 37

    end
  end
end
