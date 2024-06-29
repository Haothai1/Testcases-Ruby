class Book
    attr_accessor :title
    def initialize(title = "")
        @title = correction(title)
    end
    
    def title
        @title
    end
    
    def title=(title)
        @title = correction(title)
    end
    
    def correction(title)
        little_words = [
            "a", "an", "the", "and", "is", "it", "of", "on", "in", "to", "by", "for",
            "with", "at", "as", "but", "or", "so", "if"
            ]
        title_arr = title.split(" ")
        res_arr = []
        for i in 0..title_arr.length-1
            cur_word = ""
            if i == 0
                cur_word = title_arr[i].capitalize
            elsif little_words.include? title_arr[i]
                cur_word = title_arr[i]
            else 
                cur_word = title_arr[i].capitalize
            end
            res_arr.push(cur_word)
        end
        return res_arr.join(" ")
    end
end