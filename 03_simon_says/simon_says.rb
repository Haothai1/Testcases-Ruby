#write your code here
def echo (echo)
    echo
end

def shout (shout)
    shout.upcase
end

def repeat (repeat, num=2)

     ("#{repeat} " * num).strip

end

def start_of_word (word, num)

    array = word.chars

    newarray = []

    i = 0

    while i < num

    newarray.push(array[i])
    i += 1

    end
 
    newarray.join
end

def first_word (string)

    string.split.first

end

def titleize(string)

    string.capitalize!

    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]

    result = string.split(" ").map {|word| 

        if words_no_cap.include?(word) 
            
            word

        else

            word.capitalize

        end

    }.join(" ") 
    
    result 

end
