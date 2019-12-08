# Your Code Here
#map methods return a new Array of manipulated elements
def map(array)
  new = []
  i = 0
  while i < array.length
      new.push(yield(array[i])) # push manipulated elements into new array
      i += 1
  end
  new
end


def reduce (array, sv=nil)
  if sv
    sum = sv
    i = 0
  else
    sum = array[0]
    i = 1
  end

  while i < array.length
    sum = yield(sum, array[i]) #pass each element to block
    i += 1
  end
  sum
end
