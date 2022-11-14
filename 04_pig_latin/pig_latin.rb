#write your code here
def translate message
    vowel = ["a","e","i","o","u"]
    words = message.split
    i = 0
    result = ""
    while i < words.length
        word = words[i]
        if vowel.include?(word[0])
            word = word +"ay"
        else
            while(!vowel.include?(word[0]))
                if word[0] == 'q' && word[1] == 'u'
                    word = word[2..word.length]+ word[0..1]
                else
                    word = word[1..word.length]+ word[0]
                end
            end

            word = word + "ay"
        end
        
        result = result + (i==0? "": " ") + word
        
        i = i + 1
    end

    return result
end

puts translate("Ghostbusters")