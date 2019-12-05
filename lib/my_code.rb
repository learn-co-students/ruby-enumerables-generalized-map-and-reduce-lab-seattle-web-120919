# Your Code Here
def map(array)
  newarray = []
  i = 0
  while i < array.length do
    newarray.push(yield(array[i]))
    i += 1
  end
  newarray
end   

def reduce(array, starting_point = nil)
  i = 0
  if starting_point
    total = starting_point
    else
    total = array[0]   
    i = 1
  end    
  while i < array.length do
    total = yield(total, array[i])
    puts array[i]
    puts total
    i += 1
  end
  total 
end   