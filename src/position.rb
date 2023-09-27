class Position
  attr_reader :x, :y, :color
  def initialize(x,y, color)
    @x = x
    @y = y
    @color = color
  end

  def ==(other_pos)
    @x == other_pos.x && @y == other_pos.y
  end



end
