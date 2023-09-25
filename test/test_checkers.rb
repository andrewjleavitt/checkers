require 'minitest/autorun'
require_relative '../src/board'

class TestCheckers < Minitest::Test
  def test_get_board_state
    board = create_board
    assert_equal(0, board.stones.count)
  end

  def test_stone_at?
    board = create_board
    refute(board.stone_at?(1,1))
    board.place_stone_at(1,1)
    assert(board.stone_at?(1,1))
  end

  private

  def create_board
    Board.new
  end
end
