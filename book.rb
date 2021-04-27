class Book
	attr_accessor :title


    def title=(title)
        @title = capitalize(title)
    end

    def capitalize(title)
        little_words = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "to", "up", "and", "as", "but", "or", "our", "nor", "over" ]
        word_array = title.split
    
        title = word_array[0].capitalize
    
        for i in 1..word_array.length
            title += " "
            title += (little_words.include? word_array[i]) ? word_array[i].to_s : word_array[i].to_s.capitalize
        end
        title.strip
    end
end

book = Book.new

book.title = "inferno"

puts book.title
