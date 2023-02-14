class Triangle
  attr_accessor :equitorial, :isosceles, :scalene
  # write code here
  def initialize(opposite, hypotenuse, adjacent)
    @opposite = opposite
    @hypotenuse = hypotenuse
    @adjacent = adjacent 
  end
  
  def kind
    if @hypotenuse == @opposite == @adjacent
      :equitorial
    elsif @hypotenuse == @opposite || @opposite == @adjacent || @hypotenuse == @adjacent
       :isosceles
    else
      :scalene

  end
end
