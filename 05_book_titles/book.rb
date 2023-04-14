class Book

    attr_reader :title
    attr_writer :title

    def title=(title)

        @title = title
        
        @title = @title.capitalize!

        words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but", "in", "of", "an"]
    
        result = @title.split(" ").map {|word| 
    
            if words_no_cap.include?(word) 
                
                word
    
            else
    
                word.capitalize
    
            end
    
        }.join(" ") 
        
        @title = result 
    
    
    end

end
