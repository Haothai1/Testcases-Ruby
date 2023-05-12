#write your code here
def add(num1,num2)
     num1+num2
end

def subtract(num1,num2)
    num1-num2
end

def sum(array)
    total = 0
    array.each do |i|
      total += i
    end
    total
end

def multiply(num1, num2)
    num1 * num2
end


def multiply(*numbers)
  result = 1
  numbers.each do |num|
    result *= num
  end
  result
end


def power(base, exponent)
  base ** exponent
end

def factorial(num)
  if num == 0 || num == 1
    return 1
  else
    result = 1
    (2..num).each do |i|
      result *= i
    end
    return result
  end
end