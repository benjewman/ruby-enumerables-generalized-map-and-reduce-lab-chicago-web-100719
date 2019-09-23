def map(array)
  new_array = []
  array.length.times do |index|
    new_array[index] = yield(array[index])
  end
  return new_array
end

def reduce(array, tally = nil)
  if tally
    sum = tally
  else
    sum = array[0] 
  array.length.times do |index|
    sum = yield(sum, array[index])
  end
  sum 
end
  
  