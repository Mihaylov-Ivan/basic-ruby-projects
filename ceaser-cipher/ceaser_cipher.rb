require 'pry-byebug'
# binding.pry

def caesar_cipher(string, shift)
    letters = string.split("")
    shifted_letters = letters.map do |letter|
        
        if (letter == " ")
            letter = letter
        elsif (!letter.downcase.ord.between?(97, 122))
            letter = letter
        else
            # letter != " " ? (letter.ord + shift).chr : return letter

            if (/[[:upper:]]/.match(letter) != nil) 
                letter_ord = letter.downcase.ord + shift
                if (letter_ord > 122)
                    letter_ord -= 26
                end
                letter = (letter_ord.chr).upcase
            else
                letter_ord = letter.ord + shift
                if (letter_ord > 122)
                    letter_ord -= 26
                end
                letter = (letter_ord.chr)
            end
        end
    end
    encrypted_string = shifted_letters.join
    puts encrypted_string
end

caesar_cipher("", 6)


"If he had anything confidential to say, he wrote it in cipher, that is, by so changing the order of the letters of the alphabet, that not a word could be made out. And a test for SYMBOLS: $&£(^"