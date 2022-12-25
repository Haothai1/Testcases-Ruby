#write your code here
def translate(str)
    words = str.split
    pig_latin_words = words.map do |word|
      if word[0] =~ /[aeiouAEIOU]/
        word + "ay"
      else
        first_vowel_index = word.index(/[aeiouAEIOU]/)
        if word[first_vowel_index - 1, 2] == "qu"
          word[first_vowel_index + 1..-1] + word[0, first_vowel_index + 1] + "ay"
        else
          word[first_vowel_index..-1] + word[0, first_vowel_index] + "ay"
        end
      end
    end
    pig_latin_words.join(" ")
  end


