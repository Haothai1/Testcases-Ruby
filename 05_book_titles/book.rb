class Book
  # write your code here

  # Setter method for the title
  def title=(new_title)
    # List of words that should not be capitalized unless they are the first word
    little_words = %w[and the in of a an]

    # Split the title into words and capitalize them
    @title = new_title.split.each_with_index.map do |word, index|
      if little_words.include?(word) && index > 0
        word
      else
        word.capitalize
      end
    end.join(" ")
  end

  # Getter method for the title
  def title
    @title
  end
end
