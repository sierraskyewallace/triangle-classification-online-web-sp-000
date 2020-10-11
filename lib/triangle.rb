class Triangle
    def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if @x == 0 || @y == 0 || @z == 0
      raise TriangleError
    elsif @x + @y <= @z || @x + @z <= @y || @y + @z <= @x
      raise TriangleError
    elsif @x == @y && @y == @z
      kind = :equilateral
    elsif @x == @y && @x != @z || @y == @z && @y != @x || @x == @z && @x != @y
      kind = :isosceles
    else
      kind = :scalene
    end
  end
end

class TriangleError < StandardError
  def message 
    puts "Not a triangle."
end
end