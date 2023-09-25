# frozen_string_literal: true

class Board
  attr_reader :stones

  def initialize
    @stones = []
  end

  def place_stone_at(position)
    @stones << position
  end

  def stone_at?(position)
    @stones.select do |stone_position|
      return true if stone_position == position
    end
    false
  end

  def move_stone(from_position, to_position)
    @stones.delete(from_position)
    place_stone_at(to_position)
  end

  def present
    @stones
  end
end

class Position
  attr_reader :x, :y
  def initialize(x,y)
    @x = x
    @y = y
  end
end
