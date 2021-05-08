#write your code here
def echo(word)
    word
end

def shout(word)
     word.upcase
 end

#  def repeat(word)
#      "#{word} #{word}"
#  end

  def repeat(word, a=2)
    string = ""
      (a-1).times  {string += word + " "}
      string += word
      return string
  end

  def start_of_word(word, q)
    word.slice(0..q-1)
end

def first_word(word)
    # word.split.first
    word.split(" ")[0]
end


def titleize(word)
    little_words = ["and", "over", "the"]
    words = word.split.map{
        |item| 
        if !little_words.include?(item) 
            item.capitalize 
        else 
            item
        end
    }
    words[0] = words[0].capitalize
    words.join(" ")
end



