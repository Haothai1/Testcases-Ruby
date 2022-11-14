#write your code here
def echo message
    return message
end
def shout message
    return message.upcase
end
def repeat *more
    message = more[0]
    if more[1].nil? || more[1] == 1
        repeat_number = 2
    else
        repeat_number = more[1]
    end

    result = message

    while (repeat_number > 1)
        result = result + " " + message
        repeat_number = repeat_number - 1
    end

    return result
end
def start_of_word message, num_char
    return (message[0..(num_char-1)])
end
def first_word message
    array = message.split(" ")
    return array[0]
end
def titleize message
    array = message.split(" ")
    array2 = []
    array2.push(array[0].capitalize)
    i = 1
    while ( i < array.length)
        if !(array[i] == "and" || array[i] == "over" || array[i] =='the')
        array2.push(array[i].capitalize)
        else
        array2.push(array[i])
        end
        i +=1
    end 
    
    return array2.join(" ")
end

puts titleize("Good Morning, how are you?")