class Position
  attr_reader :x, :y
  def initialize(x,y)
    @x = x
    @y = y
  end

  def ==(other_pos)
    @x == other_pos.x && @y == other_pos.y
  end



end
