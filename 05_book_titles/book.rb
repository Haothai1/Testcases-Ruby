class Book
	attr_accessor :title

	public
	def title=(name)
		@title = t(name)
	end

	private
	def t(title)
		title = title.split(" ")

		a_of_w = ['a', 'an', 'the', 'and', 'but', 'or', 'of', 'for', 'nor', 'etc.', 'in', 'on', 'at', 'to', 'from', 'by', 'over']
		title.each do |word|		
			word[0] = word[0].upcase unless a_of_w.include? word	
		end

		title[0].capitalize!
		title = title.join(" ")	
		title
	end
end

my_book = Book.new

puts my_book.title
 my_book.title = "inferno"
puts my_book.title
