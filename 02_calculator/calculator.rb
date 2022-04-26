#write your code here
def add(num1, num2)
    add = num1 + num2
end

add(2, 2)

def subtract(num3, num4)
    subtract = num3 -num4
end

subtract(6, 3)

def sum(array)
    array.inject(0){|sum, array| sum += array }
end