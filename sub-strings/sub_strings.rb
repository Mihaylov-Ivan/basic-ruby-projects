require 'pry-byebug'
# binding.pry

def substrings(string, dict)
    result = Hash.new(0)
    string.split(" ").each do |word|
        dict.each { |item| if (word.downcase.include?(item)) then result[item] += 1 end }
    end
    result
end


# dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
# substrings("Howdy partner, sit down! How's it going?", dictionary)