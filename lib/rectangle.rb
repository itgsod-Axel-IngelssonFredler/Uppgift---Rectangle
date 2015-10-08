class Rectangle
  def initialize(width:, height:)
    if width <= 0 || height <= 0
      raise ArgumentError, 'arguments must be positive'
    end
    @width = width
    @height = height
  end

  def area()
    return @width*@height
  end

  def circumference()
    return 2*@width+2*@height
  end
end

class Square < Rectangle
  def initialize(side:)
    if side <= 0
      raise ArgumentError, 'arguments must be positive'
    end
    @width = side
    @height = side
  end
end

r = Rectangle.new(width: 30, height: 40)
s = Square.new(side: 20)

p r.area
p r.circumference
p s.area
p s.circumference