def caesar_cipher(original_string, shift_factor)
	string_length = original_string.length
	code_string = ""
	countr = 0
	puts string_length
	while countr < string_length do
		the_shift = original_string[countr].ord + shift_factor
		puts the_shift
		
		puts countr
		countr = countr + 1
	end
	return code_string
end

puts "Input your secret message"
secret_message = gets.chomp
puts "Input the shift factor"
amount_shift = gets.chomp.to_i
puts "Your Casear cipher is:"
caesar_cipher(secret_message, amount_shift)
