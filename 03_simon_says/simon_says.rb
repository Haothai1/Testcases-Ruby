#write your code here
def echo(string)
    string
end

def shout(string)
    string.upcase
end

def repeat(string, repeat = 2)
    ("#{string} " * repeat).strip
end
def start_of_word(word, num_of_char)
    word.slice(0, num_of_char)
end

def first_word(string)
    string.split(" ")[0]

end
def titleize(string)
    little_words = ["a", "after", "along", "an", "and", "around", "at", "but", "by", "for", "from", "nor", "of", "on", "over", "so", "the", "to", "under", "with", "without", "yet"]
    string.capitalize.split(" ").map { |word| little_words.include?(word) ? word : word.capitalize }.join(" ")
end
