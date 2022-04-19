#Problem 1: 

def sum_recur(array)
    return 0 if array.empty?
    array[0] + sum_recur(array[1..-1])
end

def includes?(array, target)
    return true if array[0] == target
    return false if array.empty?
    includes?(array[1..-1],target)
end

def num_occur(array, target)
    count = 0
    array.each {|ele| count+= 1 if ele == target}    
    count
    #num_occur(array[1..-1],target)
end

# Problem 4: 

def add_to_twelve?(array)
    return false if array.size <= 1
    return true if (array[0] + array[1]) == 12
    
    add_to_twelve?(array[1..-1])
end

# Problem 5: 

def sorted?(array)
    return true if array[1] == nil
    return false if array[0] > array[1]
    
    sorted?(array[1..-1])
end

# Problem 6: 

def reverse(string)
    return string if string.length < 1
    string[-1] + reverse(string[0...-1])
end

hihihhi