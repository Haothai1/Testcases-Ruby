#write your code here

  def translate(words)
    vowels = ['a', 'e', 'i', 'o', 'u']
    words.split.map do |word|
      if vowels.include?(word[0])
        word + 'ay'
      else
        consonants = ''
        idx = 0
        while !vowels.include?(word[idx]) || (word[idx] == 'u' && consonants.end_with?('q'))
          consonants += word[idx]
          idx += 1
        end
        word[idx..] + consonants + 'ay'
      end
    end.join(' ')
  end

