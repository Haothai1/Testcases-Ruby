class Book
# write your code here
    attr_reader :title

    def title=(book_title)
        articles = ["the", "a", "an", "and", "in", "of"] # words that do not need to be capitalized
        words = []

        words = book_title.split(" ") # words variable will split the book title words into an array
        new_words = words.map.with_index do |word, index| # map allows you to apply a function to every element of a data structure and receive the result
            if index == 0 #if the index is 1st 
                word.capitalize()
            elsif articles.include? word # if articles are included in articles than return those words
                word
            else
                word.capitalize() #if it does not include articles than capitalize words
            end
        end
        @title = new_words.join(" ")
    end
end
