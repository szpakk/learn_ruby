class Book

	def title=(title)
		small_words = ['and', 'of', 'from', 'to', 'a', 'the', 'over', 'in', 'an']
		title = title.split(" ")
		for i in 0...title.length
			if (i == 0 || (!small_words.include? title[i]))
				title[i].capitalize!
			end
		end
		@title = title.join(" ")
	end

	def title
		@title
	end
end
