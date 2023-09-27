require 'minitest/autorun'
require_relative '../src/stone'

class TestStone < Minitest::Test
  def test_stone_position
    stone = Stone.new(1,1, :red)

    assert_equal(1, stone.x)
    assert_equal(1, stone.y)
  end

  def test_has_color
    stone = Stone.new(1,1, :red)
    assert_equal(:red, stone.color)
  end
end
