#write your code here
def translate (pig_latin)
    words = pig_latin.split(" ")
    new_words = words.map do |word|
        translate_one_word (word)
    end
    @translate = new_words.join(" ")
end

def translate_one_word(pig_latin)
    first_letter = pig_latin[0].downcase #letter index

    if is_a_vowel(first_letter) # if it includes these
        return "#{pig_latin}ay"
    elsif pig_latin[0] == "q" && pig_latin[1] == "u"
        pig_latin[2..-1] + pig_latin[0..1] + "ay"
    elsif is_a_consonant(pig_latin[0]) && pig_latin[1] == "q" && pig_latin[2] == "u"
        pig_latin[3..-1] + pig_latin[0..2] + "ay"
    elsif is_a_consonant(pig_latin[0]) && is_a_consonant(pig_latin[1]) && is_a_consonant(pig_latin[2])
        pig_latin[3..-1] + pig_latin[0..2] + "ay"
    elsif is_a_consonant(pig_latin[0]) && is_a_consonant(pig_latin[1]) # if it includeds consonants in index 0 and 1
        pig_latin[2..-1] + pig_latin[0..1] + "ay"
    else is_a_consonant(pig_latin[0]) # if it includeds consonants in index 0
        pig_latin[1..-1] + pig_latin[0] + "ay"
    end
end

def is_a_vowel(letter)
    vowels = ["a", "e", "i", "o", "u"]
    vowels.include? (letter)
end

def is_a_consonant(letter)
    vowels = ["a", "e", "i", "o", "u"]
    consonants = ('a'..'z').to_a - vowels
    consonants.include? (letter)
end