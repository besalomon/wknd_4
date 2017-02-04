# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

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

# Copy your driver code from the previous exercise below:

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