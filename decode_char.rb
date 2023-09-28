# Define a method to decode a single Morse code character
def decode_char(morse_code)
  morse_code_dict = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  # Return the decoded character or nil if not found
  morse_code_dict[morse_code]
end

# Define a method to decode a word in Morse code
def decode_word(morse_word)
  characters = morse_word.split
  # Map each Morse character to its corresponding letter, and join them into a word
  characters.map { |char| decode_char(char) }.join
end

# Define a method to decode a message in Morse code
def decode_message(morse_message)
  words = morse_message.split('   ') # NOTE: 3 spaces represent a word separation
  # Map each Morse word to its corresponding English word, and join them into a message
  words.map { |word| decode_word(word) }.join(' ')
end
# Define the Morse code message
message = '--  -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
# Decode the message
decoded_message = decode_message(message)
# Print the decoded message
puts decoded_message
