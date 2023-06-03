require 'pry-byebug'
# binding.pry

def stock_picker(prices)
    results = prices.each_with_index.to_a
    results = results.combination(2).to_a
    results = results.max_by{|buy,sell| sell[0]-buy[0]}.map{|price, i| i}
    results
end

# stock_picker([17,3,6,9,15,8,6,1,10])