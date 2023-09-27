require 'minitest/autorun'
require_relative '../src/position'

class TestPosition < Minitest::Test
  def test_position_coordinates
    position = Position.new(1,1, :red)

    assert_equal(1, position.x)
    assert_equal(1, position.y)
  end

  def test_has_color
    position = Position.new(1,1, :red)
    assert_equal(:red, position.color)
  end
end
