#write your code here
def translate(str)
    vowels = %w[a e i o u]
    words = str.split.map do |word| # splits the input string into words and then translates
      if word.start_with?(*vowels) # if the word starts with a vowel add "ay"
        word + "ay"
      else
        # If the word starts with one or more consonants, move all the consonants to the end 
        # of the word and add “ay”.
        consonants = ""
        while !word.start_with?(*vowels) || (word.start_with?("u") && consonants.end_with?("q"))
          consonants += word.slice!(0)
        end
        word + consonants + "ay"
      end
    end
    words.join(" ")
  end 