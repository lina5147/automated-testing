require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # a deck should be 52 cards
    # it should have values of 1-13 with each suit
    # 2.  Edge cases


  describe "You can create a deck instance" do

    it "can be created" do
      new_deck = Deck.new

      expect(new_deck).must_be_instance_of Deck
    end

    
    #   cards = []
    #
    #   (1..13).each do |value|
    #     [:hearts, :spades, :clubs, :diamonds].each do |suit|
    #       card = Card.new(value, suit)
    #       cards << card
    #     end
    #   end
    #
    #   new_deck = Deck.new
    #   expect(new_deck.cards).must_equal cards
    # end

    end
end
