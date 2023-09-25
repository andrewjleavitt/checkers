# frozen_string_literal: true

class Board
  attr_reader :stones

  def initialize
    @stones = []
  end

  def place_stone_at(row, column)
    @stones << [row, column]
  end

  def present
    @stones
  end
end
