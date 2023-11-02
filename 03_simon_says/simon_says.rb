#write your code here
require "simon_says"

describe "Simon says" do
  include SimonSays
  module SimonSays
    def self.echo(input)
      input
    end
  
    def self.shout(input)
      input.upcase
    end
  
    def self.repeat(input, times = 2)
      ([input] * times).join(' ')
    end
  
    def self.start_of_word(input, num)
      input[0, num]
    end
  
    def self.first_word(input)
      input.split.first
    end
  
    def self.titleize(input)
      little_words = %w(the and over)
      words = input.split
      words.first.capitalize!
      words.map { |word| little_words.include?(word) ? word : word.capitalize }.join(' ')
    end
  end
end

