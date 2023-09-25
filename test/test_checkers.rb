require 'minitest/autorun'
require_relative '../src/board'

class TestCheckers < Minitest::Test
  def test_get_board_state
    board = create_board
    assert_equal(0, board.stones.count)
  end

  def test_stone_at?
    board = create_board
    stone_position = Position.new(1,1)
    refute(board.stone_at?(stone_position))
    board.place_stone_at(stone_position)
    board.place_stone_at(stone_position)
    assert(board.stone_at?(stone_position))
  end

  def test_move_stone
    board = create_board
    initial_position = Position.new(1,1)
    to_position = Position.new(2,3)
    board.place_stone_at(initial_position)
    board.move_stone(initial_position, to_position)

    refute(board.stone_at?(initial_position))
    assert(board.stone_at?(to_position))
  end

  def test_cannot_place_on_occupied_location
    board = create_board
    board.place_stone_at Position.new(1,1)
    board.place_stone_at Position.new(1,1)
    assert_equal(1, board.stones.count)
  end

  private

  def create_board
    Board.new
  end
end
