#write your code here
def echo(word)
    "#{word}"
end

def shout(word)
    "#{word.upcase}"
end

def repeat(word, times=0)
    array = []
    if times > 0
        array = []
        times.times do
            array.push(word)
        end
        array.join(" ")
       else
        "#{word} #{word}"
       end 
end

def start_of_word(word, char)
    word.slice(0, char)
end

def first_word(word)
    array = word.split(" ")
    array[0]
end

def titleize(title)
    little_words = %w(a an and the or nor but for yet so of, over)
  
    title_words = title.split.map.with_index do |word, index|
      if index == 0 || !little_words.include?(word)
        word.capitalize
      else
        word
      end
    end
    title_words.join(" ")
  end