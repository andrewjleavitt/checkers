require 'minitest/autorun'
require_relative '../src/board'

class TestCheckers < Minitest::Test
  def test_get_board_state
    board = create_board
    assert_equal(0, board.stones.count)
  end

  def test_place_stone
    board = create_board
    board.place_stone_at(1,1)
    assert_equal([[1,1]], board.present)
  end

  def create_board
    Board.new
  end

end
