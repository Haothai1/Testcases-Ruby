class Book
# write your code here
  attr_accessor :title

  def initialize
    @title = ''
  end

  def title=(title)
    noncap_words = ['a', 'an', 'the', 'and', 'or', 'but', 'of', 'for', 'to', 'from', 'in', 'on', 'at', 'by', 'off', 'with', 'over', 'into', 'onto', 'near']
    cap_title = title.split(' ').map { |word|
      noncap_words.include?(word) ? word : word.capitalize
    }.join(' ')
    @title = cap_title.chr.upcase + cap_title[1..]
  end
end
