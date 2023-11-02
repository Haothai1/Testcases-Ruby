class Book
# write your code here
  attr_accessor :title
  # define the title= method that capitalizes the first letter of every word
  # except for certain “little words” such as “the”, “a”, “an”, “and”, “in”, and “of”
  def title=(new_title)
    # the split method to split the title into words, then iterates over each word
    @title = new_title.split.map.with_index do |word, index|
      if index == 0 || !%w[the a an and in of].include?(word)
        word.capitalize
      else
        word
      end
    end.join(" ") # the method joins the words back together into a single string
  end
end