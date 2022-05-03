#write your code here
def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num=2)
  # ("#{str} " * num).strip
  ([str] * num).join(' ')
end

def start_of_word(str, i)
  str.slice(0, i)
end

def first_word(str)
  str.split(' ').shift
end

# If we're not allowed to install and
# require the 'titlecase' gem, then
def titleize(str)
  titlecase = str.split(' ').map { |word|
    little_words = ['a', 'an', 'the', 'and', 'or', 'but', 'of', 'for', 'to', 'from', 'in', 'on', 'at', 'by', 'off', 'with', 'over', 'into', 'onto', 'near']
    little_words.include?(word) ? word : word.capitalize
  }.join(' ')
  titlecase.chr.upcase + titlecase[1..]
end
