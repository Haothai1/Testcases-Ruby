class Book
	attr_accessor :title 




	def title (title)
		title.split.map(&:capitalize).join(' ')
	end
# write your code here
end



conjunctions = ['at', 'by', 'of', 'on', 'to', 'onto', ]