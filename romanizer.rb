#Roman Numeral Translator
puts ""
puts "Hello, and welcome to The Romanizer®!!!"

while true
	puts "Ok, gimme an integer. 1 - 3000."
	input_num = gets.chomp
	if input_num.to_i <= 0
		puts 'Oh, come on. 1 is the lowest acceptable value.'
	elsif input_num.to_i > 3000
		puts 'A little bit smaller, please.'
	else
		number = input_num.to_i
		break
	end
end


def romanize num
	roman = ''
	roman = roman + 'M' * (num/1000)

  if (num % 1000) >= 500
  	if ((num % 1000) / 100) == 9
  		roman = roman + 'CM'
  	else
  		roman = roman + 'D' + 'C' * (((num % 1000) % 500) / 100)
  	end
  elsif ((num % 1000) / 100) == 4
  	roman = roman + 'CD'
  else
  	roman = roman + 'C' * ((num % 1000) / 100)
  end

  if ((num % 1000) % 100) >= 50
  	if (((num % 1000) % 100) / 10) == 9
  		roman = roman + 'XC'
  	else
  		roman = roman + 'L' + 'X' * ((((num % 1000) % 100) % 50) / 10)
  	end
  elsif (((num % 1000) % 100) / 10) == 4
  	roman = roman + 'XL'
  else
  	roman = roman + 'X' * (((num % 1000) % 100) / 10)
  end

  if (((num % 1000) % 100) % 10) >= 5
  	if (((num % 1000) % 100) % 10) == 9
  		roman = roman + 'IX'
  	else
  		roman = roman + 'V' + 'I' * ((((num % 1000) % 100) % 10) % 5)
  	end
  elsif (((num % 1000) % 100 ) % 10) ==	4
  	roman = roman + 'IV'
  else
  	roman = roman + 'I' * (((num % 1000) % 100) % 10)
  end
	
	puts ""
  puts "Romanized version: #{roman}"
  puts "Thanks for using The Romanizer®! Goodbye."
end

romanize number


