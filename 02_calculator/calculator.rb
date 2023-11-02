#write your code here
class Calculator
    def add(a,b)
        a + b 
    end

    def subtract(a,b)
        a - b
    end

    def sum(numbers)
        numbers.reduce(0, :+)
    end

    def multiply (a , b)
        a * b
    end

    def power(base, exponent)
        base ** exponent
    end

    def factorial(n)
        if n==0
            1
        else 
            (1..n). reduce(1, :*)
        end
    end
end

calculator = Calculator.new
puts calculator.add (10, 5)
puts calculator.subtract(7,4)
puts calculator.sum(12,3)
puts calculator.multiply(4,5)
puts calculator.power(2,3)
puts calculator.factorial(6)
