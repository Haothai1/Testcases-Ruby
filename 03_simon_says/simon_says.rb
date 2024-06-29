#write your code here
def echo(word)
    return word
end

def shout(word)
    return word.upcase
end

def repeat(word, quantity = 2)
    return Array.new(quantity, word).join(" ")
end

def start_of_word(word, num)
    return word[0..num-1]
end

def first_word(words)
    return words.split()[0]
end

def titleize(word)
    little_words_arr = [
    "a", "an", "and", "as", "at", "but", "by", "for", "if", "in", "is", "it",
    "of", "on", "or", "so", "the", "to", "up", "with", "above", "across", "after",
    "against", "along", "among", "around", "before", "behind", "below", "beneath",
    "beside", "between", "beyond", "during", "inside", "near", "off", "over",
    "through", "under", "until", "within", "without"
    ]
    words_arr = word.split(" ")
    res_arr = []
    for i in 0..words_arr.length-1
        if i == 0
            res_arr.push(words_arr[i].capitalize)
        elsif little_words_arr.include? words_arr[i] 
            res_arr.push(words_arr[i])
        else 
            res_arr.push(words_arr[i].capitalize)
        end
    end
    return res_arr.join(" ")
end