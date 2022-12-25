class Book
    attr_accessor :title
    def title=(title)
      words = title.split
      capitalized_words = words.map.with_index do |word, i|
        if i == 0 || !%w[the a an and in of].include?(word)
          word.capitalize
        else
          word
        end
      end
      @title = capitalized_words.join(" ")
    end
end
