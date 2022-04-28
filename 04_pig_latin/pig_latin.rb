#write your code here
class PigLatin
    
    def pig_latin(words)
        first_step = words.split(" ")
        second_step = a.map {|string| pig_latin_word(string)}
        second_step.join(" ")
    end

    def translate (string)
        first_letter = string[0].downcase
        consonants = []

        if ["a", "e", "i", "o", "u"].include?(first_letter)
            return "#{string}ay"
        else 
            return if ["a", "e", "i", "o", "u"].include?(string[1, 2]) == false
        end
    "#{string[consonants.length..-1] + consonants.join + "ay"}"
    end
end

