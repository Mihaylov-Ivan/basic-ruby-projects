require 'pry-byebug'
# binding.pry

def bubble_sort(array)
    temp = 0
    sorted = false
    while !sorted do
        sorted = true
        array.each_with_index do |number, index|
            if (index == array.length-1)
                next
            end
            
            if (number > array[index+1])
                temp = array[index+1]
                array[index+1] = number
                array[index]= temp
                sorted = false
                # binding.pry
            # else
                # sorted = true
                # next
            end
                # binding.pry
            # else
                # sorted = true
        end
    end
    # binding.pry

    puts array
end

# bubble_sort([4,3,78,2,0,1])

bubble_sort([4,55,78,22,0,1,8,99,33])