#write your code here
def translate (pig_latin)
    words = pig_latin.split(" ")
    new_words = words.map do |word|
        translate_one_word (word)
    end
    @translate = new_words.join(" ")
end

def translate_one_word(pig_latin)
    first_letter = pig_latin[0].downcase 

    if is_a_vowel(first_letter) # if the first letter is a vowel return the pig latin verson with ay added to the end
        "#{pig_latin}ay"
    elsif pig_latin[0] == "q" && pig_latin[1] == "u" #if the 1st index is a q and the 2nd index is a u than place it at the end with ay added to the end
        pig_latin[2..-1] + pig_latin[0..1] + "ay"
    elsif is_a_consonant(pig_latin[0]) && pig_latin[1] == "q" && pig_latin[2] == "u" # if there is a consontant in the 1st index, a q in the 2nd index, or u in the 3rd index than place it at the end with ay added to the end
        pig_latin[3..-1] + pig_latin[0..2] + "ay"
    elsif is_a_consonant(pig_latin[0]) && is_a_consonant(pig_latin[1]) && is_a_consonant(pig_latin[2]) # if there is a consontant in the 1st, 2nd, and 3rd index than place it at the end with ay added to the end
        pig_latin[3..-1] + pig_latin[0..2] + "ay"
    elsif is_a_consonant(pig_latin[0]) && is_a_consonant(pig_latin[1]) # if there is a consontant in the 1st and 2nd index than place it at the end with ay added to the end
        pig_latin[2..-1] + pig_latin[0..1] + "ay"
    else is_a_consonant(pig_latin[0]) # if there is a consontant in the 1st index than place it at the end with ay added to the end
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