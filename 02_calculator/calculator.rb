#write your code here
def add(n1, n2)
  n1 + n2
end

def subtract(n1, n2)
  n1 - n2
end

def sum(arr)
  arr.reduce(0) { |memo, opr|
    memo + opr
  }
end

def multiply(*args)
  args.to_a.reduce(1) { |memo, opr|
    memo * opr
  }
end

def power(n1, n2)
  n1 ** n2
end

def factorial(n)
  return 1 if n < 2
  n * factorial(n - 1)
end
