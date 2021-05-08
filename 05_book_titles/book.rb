class Book
    def title
        @title ||= ""
    end
    def title=(word)
        small_words = ["and", "over", "the", "a", "an", "of", "in"]
        words = word.split.map{
            |item| 
            if !small_words.include?(item) 
                item.capitalize 
            else 
                item
            end
        }
        words[0] = words[0].capitalize
        @title = words.join(" ")
    end

end 
