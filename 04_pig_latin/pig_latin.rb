#write your code here

# Translates a word or sentence into Pig Latin.
def translate(sentence)
  sentence.split.map do |word|
    if word.start_with?('a', 'e', 'i', 'o', 'u')
      # If the word starts with a vowel, add "ay" to the end of it.
      word + "ay"
    else
      # Handle "qu" as a single unit, whether it's at the beginning or comes before it by other consonants.
      if word.include?("qu")
        qu_index = word.index("qu")
        if qu_index == 0
          word = word[2..-1] + "quay"
        else
          word = word[(qu_index + 2)..-1] + word[0..(qu_index + 1)] + "ay"
        end
      else
        # Find the first vowel's position.
        vowel_index = word.index(/[aeiou]/)
        # Move the consonant to the end and add "ay".
        word = word[vowel_index..-1] + word[0...vowel_index] + "ay"
      end
    end
  end.join(" ")
end