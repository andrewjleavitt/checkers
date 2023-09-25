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

  def move_stone(from, to)
    @stones.delete([from[0],from[1]])
    place_stone_at(to[0], to[1])
  end

  def present
    @stones
  end
end
