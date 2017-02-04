# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.


module BasicCalculations

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end


class SimpleCalculator

  include BasicCalculations

end

class FancyCalculator

  include BasicCalculations

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

calculation1 = FancyCalculator.new
result = calculation1.divide(6, 5)

puts "Your method has returned:"
puts result

if result == 1 
  puts "PASS: The FancyCalculator inherited SimpleCalculator"
else
  puts "F"
end

calculation2 = SimpleCalculator.new
result = calculation2.multiply(4, 2)

puts "Your method has returned:"
puts result

if result == 8 
  puts "PASS: SimpleCalculator works"
else
  puts "F"
end

calculation3 = WhizBangCalculator.new
result = calculation3.square_root(4)

puts "Testing the square root method on Whiz Bang Calculator"

puts "Your method has returned:"
puts result

if result == 2
  puts "PASS: The WhizBangCalculator inherited FancyCalculator"
else
  puts "F"
end

calculation4 = WhizBangCalculator.new
result = calculation4.multiply(4, 2)

puts "Testing the multiply method on Whiz Bang Calculator"

if result == 8
  puts "PASS: The WhizBangCalculator inherited the FancyCalculator which includes the module: BasicCalculations"
else
  puts "F"
end