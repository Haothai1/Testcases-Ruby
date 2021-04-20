#write your code here


def translate (string)
    vowels = %w[a e i o u]
    words = string.split
    new_words = []

    words.each do |word|
        new_word =
            if word.match /^.*qu/
                first_part = word[/^.*qu/]
                last_part = word.delete first_part
                last_part + first_part + 'ay'
       
            else !vowels.include?(word[0])
                first_part = word[/[^aeiou]*/]
                last_part = word.delete first_part
                last_part + first_part + 'ay'
            end
            new_words.push new_word
        end
        new_words.join ' '
    end
    
