#write your code here
def move_letter_to_end(word)
    word_arr = word.split("")
    if word_arr[0] == "q" && word_arr[1] == "u" 
        word_arr.push("q")
        word_arr.push("u")
        word_arr.shift
        word_arr.shift
        return word_arr.join()
    end
    word_arr.push(word_arr[0])
    word_arr.shift
    return word_arr.join()
end

def translate(words)
    vowel_letters = ["a", "e", "i", "o", "u"]
    test_punctuation = [".", ","]
    capitalized_words = []
    punctuation_array = []
    res_array = []
    words_arr = words.split(" ")
    #detect capitalized letters in words and 
    #create scheme to restore capitalization
    #if capitalized add record in scheme equal 1 or 0 if not
    #also make all words in array as a downcased
    for i in 0..words_arr.length-1
        word_body = words_arr[i].to_s
        if word_body[0] == word_body[0].upcase
            capitalized_words.push(1)
            words_arr[i] = words_arr[i].downcase
        else
            capitalized_words.push(0)
        end
    end
    #check punctuation symbols in words and create scheme
    #we will check last symbol in tested word
    for i in 0..words_arr.length-1
        word_body = words_arr[i].to_s
        if test_punctuation.include? word_body[-1]
            punctuation_array.push(word_body[-1])
            words_arr[i] = word_body.tr(test_punctuation.join(),"")
        else
            punctuation_array.push(false)
        end
    end
    for i in 0..words_arr.length-1
        word_body = words_arr[i].to_s
        move_letter_to_end(word_body)
        while vowel_letters.none? word_body[0]
                word_body = move_letter_to_end(word_body)
        end
        word_body = "#{word_body}ay"
        res_array.push(word_body)
    end
    #fix words capitalization 
    for i in 0..res_array.length-1
        word_body = res_array[i].to_s
        if punctuation_array[i] != false
            res_array[i] = "#{word_body}#{punctuation_array[i]}"
        end
    end
    #recover punctuation
    for i in 0..res_array.length-1
        word_body = res_array[i].to_s
        if capitalized_words[i] == 1
            res_array[i] = word_body.capitalize
        end
    end
    return res_array.join(" ")
end