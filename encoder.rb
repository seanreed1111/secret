def encoder(message)
	coded_message = []
	coded_message << message
	#what methods do I want to use?
	#gsub
	#slice
	#reverse
	#do concat or "<<" to  add random null characters to the string
	# count to figure out which characters to include more of
	#do something according to string.length
	#insert "abcd".insert(0, 'X')    #=> "Xabcd"

	#downcase
	coded_message << coded_message[-1].downcase

	#reverse
	coded_message << coded_message[-1].reverse

	#replace spaces with #ra$e%
	coded_message << coded_message[-1].gsub(" ", "ra$e%")

	# #split into 2 letter groups
	# length = coded_message[-1].length

	# next_to_last = coded_message[-1]
	# last = String.new
	# #Assume even
	# max = length/2
	# count = 0
	# while count < max
	# 	coded_message[-1] << next_to_last.slice(count, count+1)
	# 	count = count + 2
	# end
	# # if count is odd then add the last character
	# c

coded_message[-1]
end

puts encoder("here is my secret message")