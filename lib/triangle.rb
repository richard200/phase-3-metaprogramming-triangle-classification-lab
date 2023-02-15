class Triangle
  attr_accessor :opposite, :hypotenuse, :adjacent
  # write code here
  def initialize(opposite, hypotenuse, adjacent)
    @opposite = opposite
    @hypotenuse = hypotenuse
    @adjacent = adjacent 
  end
  
  def kind
    validate_triangle
    if @hypotenuse == @opposite && @opposite == @adjacent
      :equilateral
    elsif @hypotenuse == @opposite || @opposite == @adjacent || @hypotenuse == @adjacent
       :isosceles
    else
      :scalene
    end
  end

  def sides_greater_than_zero?
    [hypotenuse, adjacent, opposite].all?(&:positive?)
  end

  def valid_triangle_inequality?
    hypotenuse + adjacent > opposite  && hypotenuse + opposite > adjacent && adjacent + opposite > hypotenuse

  end

  def validate_triangle
    raise TriangleError unless sides_greater_than_zero? && valid_triangle_inequality?
  end

  class TriangleError < StandardError
  end
end
