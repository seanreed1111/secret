require './encoder.rb'
require './decoder.rb'

puts "Enter your message to test the encoder/decoder"
message = gets.chomp
puts "The message is #{message}"
puts "The encoded message is #{encoder(message)}"
puts "The decoded message is #{decoder(encoder(message))}"
