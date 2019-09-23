def map(array)
  new_array = []
  array.length.times do |index|
    new_array[index] = yield(array[index])
  end
  return new_array
end

def reduce(array, tally = nil)
  tally
end