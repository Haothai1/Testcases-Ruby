#write your code here


def translate (string)

    alpha = ('a'..'z').to_a

    vowels = %w[a e i o u]

    consonants = alpha - vowels
  
    if vowels.include?(string[0])

      string + 'ay'

    elsif consonants.include?(string[0]) && consonants.include?(string[1])

      string[2..-1] + string[0..1] + 'ay'

    elsif consonants.include?(string[0])

      string[1..-1] + string[0] + 'ay'

    else

      string

    end

end