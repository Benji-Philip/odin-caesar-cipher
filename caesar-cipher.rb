puts "Enter String :"
string = gets.chomp

number_is_valid = false

until number_is_valid
  puts "Shift by : (default = 4)"
  number = gets.chomp.to_i
  number_is_valid = number != 0 # what if the number is too big
  if number_is_valid
    puts "Shifting by #{number}"
  else
    puts "Invalid input"
  end
end

def caesar_cipher(string_to_encrypt, shift)
  string_to_encrypt.chars.map do |character|
    character.ord
  end
end