# frozen_string_literal: true

class Board
  attr_reader :stones

  def initialize
    @stones = []
  end

  def place_stone_at(x, y)
    @stones << [x, y]
  end

  def stone_at?(x,y)
    @stones.select do |stone|
      return true if stone == [x,y]
    end
    false
  end

  def present
    @stones
  end
end
