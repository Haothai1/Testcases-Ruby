#write your code here
def add( number_1, number_2 )
    number_1 + number_2
end
  
def subtract( number_1, number_2 )
    number_1 - number_2
end
  
def sum(numbers)
    total = 0
    numbers.each { |number| total += number }
    total
end

# For extra credit
  
def multiply(number_1, *others)
    total = number_1
    others.each { |num| total *= num }
    total
end
  
def power(base, power)
    base ** power
end
  
def factorial(n)
    if x == 0
       total = 0
    else
      total = 1
      1.upto(x) { |i| total *= i }
      total
    end
end