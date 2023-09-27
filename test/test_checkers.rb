require 'minitest/autorun'
require_relative '../src/board'

class TestCheckers < Minitest::Test

  def setup
    @board = create_board
  end

  def test_get_board_state
    assert_equal(0, @board.stones.count)
  end

  def test_stone_at?
    stone = Stone.new(1,1, :red)
    refute(@board.stone_at?(stone))
    @board.place_stone_at(stone)
    @board.place_stone_at(stone)
    assert(@board.stone_at?(stone))
  end

  def test_move_stone
    initial_position = Stone.new(1,1, :red)
    to_position = Stone.new(2,3, :red)
    @board.place_stone_at(initial_position)
    @board.move_stone(initial_position, to_position)

    refute(@board.stone_at?(initial_position))
    assert(@board.stone_at?(to_position))
  end

  def test_cannot_place_on_used_location
    @board.place_stone_at Stone.new(1,1, :red)
    @board.place_stone_at Stone.new(1,1, :red)
    assert_equal(1, @board.stones.count)
  end

  private

  def create_board
    Board.new
  end
end
