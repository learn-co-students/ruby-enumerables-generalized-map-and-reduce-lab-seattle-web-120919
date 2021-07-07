def map(source_array)
  new_array = []
  source_array.each do |item|
    new_array.push(yield(item))
  end
  new_array
end

def reduce(source_array, start = nil)
  if start
    result = start
    i = 0 
  else
    result = source_array[0]
    i = 1
  end
  while i < source_array.length 
    result = yield(result, source_array[i])
    i += 1
  end
  result
end