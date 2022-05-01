#write your code here
def echo (word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, count = 2)
    Array.new(count, word).join(" ")
end

def start_of_word(word, index)
    word[0, index]
end

def first_word(word)       
   word.split[0]
end

#map to collect the result of running the block over the elements of the array
def titleize(word)
    little_words = ["and", "the", "over"]

    titles = word.split.map do |all_words|
        if little_words.include?(all_words)#If little words array included do not capitalize
        all_words
        else
        all_words.capitalize #if not included in little array capitalize 
        end
    end
    titles.first.capitalize! #Capitalizes the first of letter of every title
    titles.join(" ") #Joins together the split which was the array of the argument(parameter)
end
