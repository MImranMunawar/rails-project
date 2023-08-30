# Create a Fraction class with two attributes  and denominator
# Create methods to add, subtract and multiply two fraction objects

class Fraction
  attr_accessor :a, :b

  def initialize(a, b)
    @a = a
    @b = b
  end

  def add(other)
    common_b =  @b * other.b
    new_a = @a * other.b + other.a * @b
    Fraction.new(new_a, common_b)
  end

  def multiply(other)
    new_a = @a * other.a
    new_b = @b * other.b
    Fraction.new(new_a, new_b)
  end

  def subtract(other)
    common_b = @b * other.b
    new_a = @a * other.b - other.a * @b
    Fraction.new(new_a, common_b)
  end

  def to_s
    "#{@a}/#{@b}"
  end
end

fraction1 = Fraction.new(1, 2)
fraction2 = Fraction.new(2, 3)
fraction3 = Fraction.new(3, 4)

result1 = fraction1.add(fraction2)
puts "({#{fraction1} + #{fraction2}}) * #{fraction3} = #{result1}"
# Output: ((1/2 + 2/3) * 3/4) = 21/24

result2 = fraction1.multiply(fraction2).subtract(fraction3)
puts "#{fraction1} * #{fraction2} - #{fraction3} = #{result2}"
# Output: (1/2 * 2/3 - 3/4) = -10/24

