def map(array)
    new = []
    index = 0
    while index < array.length do
        new.push(yield(array[index]))
        index += 1
    end
    return new
end

def reduce(array, sv=nil)
    if sv
        sum = sv
        i = 0
    else
        sum = array[0]
        i = 1
    end

    while i < array.length do
        sum = yield(sum, array[i])
        i += 1
    end
    sum
end