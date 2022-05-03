class Book
# write your code here
    attr_reader :title

    def title=(book_title)
        articles = ["the", "a", "an", "and", "in", "of"] # words that do not need to be capitalized
        words = []

        words = book_title.split(" ") # words variable will split the book title words into an array
        new_words = words.map.with_index do |word, index| # map allows you to apply a function to every element of a data structure and receive the result
            if index == 0 #if the index is eqaul to then capitlize the word
                word.capitalize()
            elsif articles.include? word # if the word is one of the articles then just return the word
                word
            else
                word.capitalize() #if the word in the title is not one of the articles words then return the word capitalized
            end
        end
        @title = new_words.join(" ") # join the array that was split back together with space in between the title
    end
end
