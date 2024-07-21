puts 'Enter String :'
string = gets.chomp

number_is_valid = false

until number_is_valid
  puts 'Shift by :'
  shift_number = gets.chomp.to_i
  number_is_valid = shift_number != 0 # what if the number is too big
  if number_is_valid
    puts "Shifting by #{shift_number}"
  else
    puts 'Invalid input'
  end
end

def caesar_cipher(string_to_encrypt, shift)
  encrypted_array = string_to_encrypt.bytes.map do |character|
    if character.between?(65, 90)
      caesar_calculator(65, 90, character, shift).chr
    elsif character.between?(97, 122)
      caesar_calculator(97, 122, character, shift).chr
      # each character get turned into numbers and shift is added to it but within limits and having it round of
    else
      character.chr
    end
  end
  encrypted_array.join
end

def caesar_calculator(lower_limit, upper_limit, number_to_check, shift)
  if number_to_check + shift > upper_limit
    lower_limit + ((number_to_check + shift) - upper_limit - 1)
  elsif number_to_check + shift < lower_limit
    upper_limit - (lower_limit - (number_to_check + shift))
  else
    number_to_check + shift
  end
end

p caesar_cipher(string, shift_number)
