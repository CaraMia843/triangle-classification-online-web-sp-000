class Triangle
  
  attr_accessor :side1, :side2, :side3

  @sides = []
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3]
  end
  
  def kind
    if(illegal? == true || valid? == false)
      raise TriangleError
    elsif(equilateral?)
      :equilateral
<<<<<<< HEAD
    elsif(scalene?)
      :scalene
    elsif(isosceles?)
      :isosceles
=======
    elsif(isosceles?)
      :isosceles
    elsif(scalene?)
      :scalene
>>>>>>> c183c7132a7e50f8d2845fb540f69210b9f350b1
    end
  end
  
  def illegal?
    @sides.each do |side|
      if(side <= 0)
        true 
      end 
    end
  end
  
  def equilateral?
    (@side1 == @side2) && (@side1 == @side3)
  end
  
<<<<<<< HEAD
  def scalene?
    (@side1 != @side2) && (@side1 != @side3) && (@side2 != @side3)
  end
  
=======
>>>>>>> c183c7132a7e50f8d2845fb540f69210b9f350b1
  def isosceles?
    (@side2 == @side3) || (@side1 == @side2) || (@side1 = @side3)
  end
  
<<<<<<< HEAD
  def valid?
    (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side3 > @side2)
=======
  def scalene?
    (@side1 != @side2) && (@side1 != @side3) && (@side2 != @side3)
  end
  
  def valid?
    (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side2 > @side3)
>>>>>>> c183c7132a7e50f8d2845fb540f69210b9f350b1
  end
  
  class TriangleError < StandardError
    
  end
  
end
