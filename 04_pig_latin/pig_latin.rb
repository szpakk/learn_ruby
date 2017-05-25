def translate(message)
	vowels = ['a', 'e', 'i', 'o', 'u']
	message = message.split(" ")
	message_copy = message[0..-1]
	for i in 0...message.length
		j = 0
		until (vowels.include? message[i][j])
			message_copy[i] = message_copy[i][1..-1] + message_copy[i][0]
			j += 1
		end
		if (message_copy[i][0] == 'u' && (message[i][0] == 'q' || message[i][0..1] == 'sq'))
			message_copy[i] = message_copy[i][1..-1] + message_copy[i][0]			
		end
		message_copy[i] += "ay"
	end
	message_copy.join(" ")
end