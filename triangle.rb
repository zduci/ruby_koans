# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  raise TriangleError if not_a_triangle(a, b, c)
  return :equilateral if a == b && a == c
  return :isosceles if a == b || a == c || b == c
  :scalene
end

def not_a_triangle(a, b, c)
  zero_or_negative_sides(a, b, c) || invalid_sides(a, b, c)
end

def zero_or_negative_sides(a, b, c)
  zero_or_negative(a) || zero_or_negative(b) || zero_or_negative(c)
end

def zero_or_negative(x)
  x <= 0
end

def invalid_sides(a, b, c)
  sides = [a, b, c].sort
  sides[0] + sides[1] <= sides[2]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
