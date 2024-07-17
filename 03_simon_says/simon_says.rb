#write your code here

# Echoes the input string.
def echo(word)
  word
end

# Converts the input string to uppercase.
def shout(word)
  word.upcase
end

# Repeats the input string a specified number of times. On default to repeat twice if no number is specified.
def repeat(word, times=2)
  ([word] * times).join(" ")
end

# Returns the first n letters of the input string.
def start_of_word(word, n)
  word[0...n]
end

# Returns the first word of the input string we put.
def first_word(sentence)
  sentence.split.first
end

# Capitalizes each word in the input string, except certain small words. (Always capitalizes the first word).
def titleize(sentence)
  small_words = %w[and over the]
  words = sentence.split
  words.each_with_index.map do |word, index|
    if small_words.include?(word) && index > 0
      word
    else
      word.capitalize
    end
  end.join(" ")
end