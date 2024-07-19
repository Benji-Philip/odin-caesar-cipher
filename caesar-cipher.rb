puts "Enter String :"
string = gets.chomp

number_is_valid = false

until number_is_valid
  puts "Shift by :"
  shift_number = gets.chomp.to_i
  number_is_valid = shift_number != 0 # what if the number is too big
  if number_is_valid
    puts "Shifting by #{shift_number}"
  else
    puts "Invalid input"
  end
end

def caesar_cipher(string_to_encrypt, shift)
  result = ""
  string_to_encrypt.each_byte do |character|
    # check if character is between A and Z or a and z=
    if character.between?(65, 90) || character.between?(97, 122)
      # character has an offset from a base value (65 for "A" or 97 for "a") to which we add the shift and add back to the base value to get shifted value
      # modulo is used to not cross limit of 25 characters before adding the new offset
      base = character < 91 ? 65 : 97
      new_offset = character - base + shift # normal offset = character - base
      corrected_offset = new_offset % 26 # if offset hits 26 it reverts the offset to 0 and so on
      new_character = base + corrected_offset
      result += new_character.chr
    else
      result += character.chr # adds remaining as is
    end
  end
  result
end

p caesar_cipher(string, shift_number)
