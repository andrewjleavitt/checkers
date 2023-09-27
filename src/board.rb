# frozen_string_literal: true

require_relative 'position'

class Board
  attr_reader :stones

  def initialize
    @stones = []
  end

  def place_stone_at(position)
    @stones << position unless(stone_at?(position))
  end

  def stone_at?(position)
    @stones.select do |stone_position|
      return true if stone_position == position
    end
    false
  end

  def move_stone(from_position, to_position)
    pickup_stone_at(from_position)
    place_stone_at(to_position)
  end

  def pickup_stone_at(position)
    @stones.delete(position)
  end

  def present
    @stones
  end
end
