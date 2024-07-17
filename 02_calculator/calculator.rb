#write your code here

# Adds two numbers together.
def add(a, b)
  a + b
end

# Subtracts the second number from the first.
def subtract(a, b)
  a - b
end

# Calculates the sum of an array of numbers.
def sum(array)
  array.reduce(0, :+)
end

# Multiplies all the numbers provided as arguments.
def multiply(*numbers)
  numbers.reduce(1, :*)
end

# Raises base to the power of exponent.
def power(base, exponent)
  base ** exponent
end

# Calculates the factorial of a number.
def factorial(n)
  return 1 if n == 0
  (1..n).reduce(:*)
end