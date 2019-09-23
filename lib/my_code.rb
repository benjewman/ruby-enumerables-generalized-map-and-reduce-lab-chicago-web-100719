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
    sum = 0 
  end 
  array.length.times do |index|
    tally = yield(tally, array[index])
  end
  tally
end