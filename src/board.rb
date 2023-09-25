# frozen_string_literal: true

class Board
  attr_reader :stones

  def initialize
    @stones = []
  end

  def present
    @state
  end
end
