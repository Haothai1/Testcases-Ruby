#write your code here
def add(a, b)
    return a.to_f + b.to_f
end

def subtract(a, b)
    return a.to_f - b.to_f
end

def sum(sum_array)
    res = 0
    for i in 0..sum_array.length-1
        res += sum_array[i].to_f
    end
    return res
end

def multiply(mult_array)
    res = 1
    for i in 0..mult_array.length-1
        res *= mult_array[i].to_f
    end
    return res
end

def power(a, b)
    return a.to_f**b.to_f
end

def factorial(num)
    if num == 0 || num == 1
        return 1
    end
    res = num
    for i in 1..num-1
        res *= i
    end
    return res
end