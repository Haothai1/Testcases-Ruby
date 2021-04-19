def sum (input)
	total = 0
	if input.length() > 0
		input.each {|item| 
    total += item}
    return total
	else 
		total = 0 
  end
end

#iterate over the input to add all the input items together


def subtract (num1, num2)
	num1.to_f - num2.to_f
end

def add (num1, num2)
	num1.to_f + num2.to_f
end

