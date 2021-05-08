#write your code here
#write your code here
def translate(words)
    word = words.split.map{ |item| word_new(item)}.join(" ")
  end
  
  def vowel(letter) #check if first letter is vowel
    vowel_if = false
    vowels = ["a", "e", "i", "o", "u"]
    vowels.each do |vowel| 
      if letter == vowel
        vowel_if = true
      end
    end
    vowel_if
end

def consonant(letters) #check if first several letters are consonants
  letters = letters.split('') if letters.length > 0 # array of first letters
  i = 0
  count = letters.length
  consonant_if = false
  vowels = ["a", "e", "i", "o", "u"]
  
  while i < letters.length do
      # puts letters[i]
      vowels.each do |vowel|
          if letters[i] == vowel 
              count -= 1
          end
      end
      i += 1
  end
  
  if count == letters.length
      consonant_if = true
  end
  return consonant_if
end

def word_new(word)
  word_new = ""
  if vowel(word.slice(0)) 
    word_new = word + "ay"
  elsif consonant(word.slice(0..2)) || (word.slice(1..2) == "qu")
    first_letters = word.slice(0..2)
    letters = word.slice(3..(word.length))
    word_new = letters + first_letters + "ay"
  elsif (word.slice(0..1) == "qu") || (consonant(word.slice(0..1)))
    first_letters = word.slice(0..1)
    letters = word.slice(2..(word.length))
    word_new = letters + first_letters + "ay"
  elsif consonant(word.slice(0))
    first_letter = word.slice(0)
    letters = word.slice(1..(word.length))
    word_new = letters + first_letter + "ay"
  end
  word_new
end