#write your code here
def translate(s)
	w = s.clone # w = words

	#If there are more than 1 word 
	if w.index(" ")
		w = w.split(" ")
		w.map! { |word| word = translate(word)}
		w.join(" ")

	#Add -ay to end
	elsif isVowel(w[0])
		w << "ay"

	#If 3 consonants, shift to end and add "ay"
	elsif isConsonants(w[0..2])
		w = w.split("")
		c = w.shift << w.shift << w.shift
		w << c << "ay"
		w.join

	##If 2 consonants, shift to end and add "ay"
	elsif isConsonants(w[0..1])
		w = w.split("")
		c = w.shift << w.shift
		w << c << "ay"
		w.join

	#If 1 consonant, shift to end and add "ay"
	elsif isConsonants(w[0])
		w = w.split("")
		c = w.shift
		w << c << "ay"
		w.join
	end
end

def isVowel(c)
	c.index(/[aeiouAEIOU]/) == nil ? false : true
end

def isConsonants(chars)
	chars.gsub!("qu", "qq") if chars.include?("qu")
	chars.split("").each { |c| return false if isVowel(c) }
	true
end