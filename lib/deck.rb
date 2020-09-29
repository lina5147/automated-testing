
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
    #removes the last element from the array and returns it
    card = @cards.pop
    return card
  end

  def shuffle
    @cards.shuffle
  end

  def count
    return @cards.count
  end
end
