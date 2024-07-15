class Book
    # write your code here
    attr_reader :title
      
      def title=(new_title)
        words = new_title.split
        words[0] = capitalize_word(words[0])
        for i in 1...words.length
            words[i] = capitalize_word(words[i]) if !lowercase_word?(words[i])
        end
        @title = words.join(' ')
      end
      
      private
      
      def capitalize_word(word)
        word[0].upcase + word[1..-1]
      end
      
      def lowercase_word?(word)
        ['the', 'a', 'an', 'and', 'in', 'of'].include?(word.downcase)
      end
    
    end
    