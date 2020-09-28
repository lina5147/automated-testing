
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    if (1..13).include? (value)
      @value = value
    else
      raise ArgumentError, 'Invalid Value'
    end

    if %i[hearts spades clubs diamonds].include? (suit)
      @suit = suit
    else
      raise ArgumentError, 'Invalid Suit'
    end

  end

  def to_s
    return "#{value} of #{suit.to_s}"
  end

end
