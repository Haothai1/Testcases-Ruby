#write your code here
def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(array)
    array.sum
end

def multiply(args)
    sum = 1
    args.each { |el| sum *= el }
    sum
end

def power(num, power)
    sum = 0
    power.times do
       sum = num * num
    end
    sum
end

def factorial(num)
    array = (1..num).to_a
    sum = 1
    array.reverse.each { |el| sum *= el }
    sum
end