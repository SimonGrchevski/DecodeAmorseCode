# frozen_string_literal: true

def decode_char(letter)
  alph = { '.-': 'A', '-...': 'B', '-.-.': 'C', '-..': 'D', '.': 'E',
           '..-.': 'F', '--.': 'G', '....': 'H', '..': 'I', '.---': 'J', '-.-': 'K',
           '.-..': 'L', '--': 'M', '-.': 'N', '---': 'O', '.--.': 'P', '--.-': 'Q',
           '.-.': 'R', '...': 'S', '-': 'T', '..-': 'U', '...-': 'V', '.--': 'W',
           '-..-': 'X', '-.--': 'Y', '--..': 'Z', '': '', ' ': ' ', '/': ' ' }
  alph[letter.to_sym]
end

def decode_word(word)
  decoded_word = +''
  word.split.each do |c|
    decoded_word << decode_char(c)
  end
  decoded_word
end

def decode(sentence)
  decoded_sentence = +''
  sentence.split('   ').each do |word|
    decoded_sentence << "#{decode_word(word)} "
  end
  puts decoded_sentence
end
decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
