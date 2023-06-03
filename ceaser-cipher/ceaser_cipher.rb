require 'pry-byebug'
# binding.pry

def caesar_cipher(string, shift)
    letters = string.split("")
    shifted_letters = letters.map do |letter|
        if (letter == " " || !letter.downcase.ord.between?(97, 122)) then next letter end
        letter_ord = letter.downcase.ord + shift
        letter_ord > 122 ? letter_ord -= 26 : letter_ord = letter_ord
        letter_ord < 97 ? letter_ord += 26 : letter_ord = letter_ord
        /[[:upper:]]/.match(letter) != nil ? letter = (letter_ord.chr).upcase : letter = (letter_ord.chr)
    end
    encrypted_string = shifted_letters.join
    encrypted_string
end

# caesar_cipher("What a string!", 5)