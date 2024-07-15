#write your code here

def echo(input)
    input
end

def shout(input)
    input.upcase
end

def repeat(string, times = 2)
    repeated_string = ""
    times.times do
      repeated_string += string + " "
    end
    repeated_string.strip
end

def start_of_word(word, n)
    word.slice(0, n)
  end
  
  def first_word(sentence)
    sentence.split.first
  end
  

  def titleize(title)
    words = title.split
    little_words = ["and", "the", "over"]
    titleized_words = []
    
    words.each_with_index do |word, index|
      if index == 0 || !little_words.include?(word)
        titleized_words << word.capitalize
      else
        titleized_words << word
      end
    end
    
    titleized_words.join(" ")
  end