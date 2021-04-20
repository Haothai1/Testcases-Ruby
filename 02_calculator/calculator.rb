#write your code here
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(arr)
  arr.reduce(0) { |sum, num| sum + num}
end

def multiply(*numbers) 
  numbers.reduce(1) { |result, num| result * num }
end

def power(a, b)
  a ** b
end
