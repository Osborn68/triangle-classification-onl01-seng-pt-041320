class Triangle

attr_accessor :a, :b, :c

def initialize(a,b,c)
  @a = a 
  @b = b 
  @c = c 
end 

<<<<<<< HEAD
def kind 
  validate_triangle
  if a == b && b == c 
    :equilateral
    elsif a == b || b == c || a == c 
    :isosceles
  else 
    :scalene
  end 
=======

class TriangleError < StandardError

>>>>>>> 9726263c416d3417a87b553684e7daa862c5db4f
end

def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0 
     if real_triangle.include?(false) 
       raise TriangleError
       puts error.message
    end
    end
  end


class TriangleError < StandardError
  def message 
    "This triangle is illegal"
end
end
end 
