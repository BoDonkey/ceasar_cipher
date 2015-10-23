def caesar_cipher(original_string, shift_factor)
	string_length = original_string.length
	code_string = "A"
	countr = 0
	while countr < string_length do
		the_shift = original_string[countr].ord + shift_factor
		if original_string[countr].ord == 32
			code_string[countr] = original_string[countr]
		elsif original_string[countr].ord < 65 || original_string[countr].ord > 173
			code_string[countr] = original_string[countr]
		elsif original_string[countr].ord.between?(91,96)
			code_string[countr] = original_string[countr]	
		elsif original_string[countr].ord > 96 && the_shift > 122
				while the_shift > 122
					the_shift -= 122
				end
				code_string[countr] = (the_shift+96).chr
		elsif original_string[countr].ord < 91 && the_shift > 90
				while the_shift > 90
					the_shift -= 90
				end
				code_string[countr] = (the_shift+64).chr
		else 
			code_string[countr] = the_shift.chr
		end
		countr = countr + 1
	end
	puts code_string
end

def caesar_cipher_akpark(str, num)

	result = str.split("")
	result.map! do |char|
		if char == ' '
			' '
		else
			if ('A'..'Z').include?(char)
				((char.ord+num-90)%26+64).chr
			elsif ('a'..'z').include?(char)
				((char.ord+num-122)%26+96).chr
			else
				char
			end 
		end
	end
	result.join("")

end

puts "Input your secret message"
secret_message = gets.chomp
puts "Input the shift factor"
amount_shift = gets.chomp.to_i
puts "Your Casear cipher is:"
caesar_cipher(secret_message, amount_shift)
