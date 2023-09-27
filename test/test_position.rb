require 'minitest/autorun'
require_relative '../src/position'

class TestPosition < Minitest::Test
  def test_position_coordinates
    position = Position.new(1,1)

    assert_equal(1, position.x)
    assert_equal(1, position.y)
  end
end
