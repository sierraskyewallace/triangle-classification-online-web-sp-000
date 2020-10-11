class Triangle
  attr_accessor :side_1, :side_2, :side_3, :all_sides
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @all_sides = []
end
  def kind 
     if @side_1 == @side_2 && @side_2 == @side_3
      return :equilateral
    elsif @side_1 == @side_2 && @side_1 + @side_2 > @side_3 || @side_1 == @side_3 && @side_1 + @side_3 > @side_2 || @side_2 == @side_3 && @side_2 + @side_3 > @side_1
      return :isosceles
    elsif @side_1 != @side_2 && @side_2 != @side_3 && @side_1 + @side_2 > @side_3
      return :scalene
    else 
        raise TriangleError
      end
    end

  class TriangleError < StandardError
    puts "Not a triangle."
  end
end