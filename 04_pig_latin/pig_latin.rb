#write your code here
def translate(str)
  str.split(' ').map { |word|
    if /[aeiou]/.match?(word.downcase.chr)
      word + 'ay'
    elsif /(qu)/.match?(word.downcase)
      idx = word.downcase.index('qu')
      /[A-Z]/.match?(word.chr) ? word[idx+2..].capitalize + word[..idx+1].downcase + 'ay' : word[idx+2..] + word[..idx+1] + 'ay'
    else
      idx = word.index(/[aeiou]/)
      /[A-Z]/.match?(word.chr) ? word[idx..].capitalize + word[..idx-1].downcase + 'ay' : word[idx..] + word[..idx-1] + 'ay'
    end
  }.join(' ')
end
