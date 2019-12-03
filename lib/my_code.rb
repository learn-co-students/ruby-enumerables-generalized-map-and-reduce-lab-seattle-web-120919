def map(array)
new = []
i = 0 
while i < array.length do 
  new.push(yield(array[i])) #want to return a new array so need to #add these manipulated elements manipulated by our block to a #new array so use the push method.
  i += 1 
  
end
new 
end 

def reduce(array, starting_point=nil) #why did we use nil this #time instead of 0 here??? ask this question.
 if starting_point #if there is a starting point
   sum = starting_point  #will set num1 equal to that starting #value 
   i = 0 #then add a counter that starts at first element in our #array.
  else sum = array[0] #if no starting value then our num1 will be #set to the first number in our array so 0 is the index #indicating we will be setting num1 equal to that first #element.
   i = 1 #since we are already working with the first element so #we want to move on to the next element after above line was #executed
 end 
    #now want to loop over array so we can return the sum of these #values.
    while i < array.length do 
      sum = yield(sum, array[i]) #pass each element to this block. #the #array elements will be added to num1 #. redefine sum #to equal the sum of the two numbers in the parenthesis (#using yield to pass those #two bits of data to the block that is going to be called on our reduce method.)
      i += 1 
    end 
    sum
end 

#another question to ask on this one... why does our reduce method pass the true and false tests shown in the #terminal?

 
 