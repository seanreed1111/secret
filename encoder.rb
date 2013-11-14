def encoder(message)
	coded_message = []
	coded_message << message

puts "original message #{coded_message[-1]}"
	#downcase
	coded_message << coded_message[-1].downcase

puts "after downcase #{coded_message[-1]}"
	#reverse
	coded_message << coded_message[-1].reverse

puts "after reverse #{coded_message[-1]}"
	#replace spaces with ra$e%
	coded_message << coded_message[-1].gsub(" ", "ra$e%")

puts "after replacement of spaces with ra$e% #{coded_message[-1]}"

coded_message[-1]
end