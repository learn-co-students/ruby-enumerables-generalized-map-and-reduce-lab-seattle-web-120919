def map(array)
  new = []
  counter = 0
  while counter < array.length do
    new.push(yield(array[counter]))
    counter += 1
  end
  new
end

def reduce(array, sv = nil)
  if sv 
    sum = sv
    counter = 0
  else
    sum = array[0]
    counter = 1
  end
  
  while counter <array.length do
    sum = yield(sum, array[counter])
    counter += 1
  end
  sum
end
