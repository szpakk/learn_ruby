def echo(message)
	message
end

def shout(message)
	message.upcase
end

def repeat(message, times=2)
	"#{message}" + " #{message}" * (times-1)
end

def start_of_word(word, num)
	word[0...num]
end

def first_word(sentence)
	sentence = sentence.split(" ")
	sentence[0]
end

def titleize(message)
	small_words = ['and', 'of', 'from', 'to', 'a', 'the', 'over', 'in', 'an']
	message = message.split(" ")
	for i in 0...message.length
		if (i == 0 || (!small_words.include? message[i]))
			message[i].capitalize!
		end
	end
	message.join(" ")
end