
# deck.rb

require_relative 'card'


class Deck
  attr_reader :cards

  def initialize
    @cards = []

    (1..13).each do |value|
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        card = Card.new(value, suit)
        @cards << card
      end
    end
  end

  def draw
    # returns a card
  end

  def shuffle
    # shuffles the deck
  end
end
