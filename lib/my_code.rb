def make_sandwich(element1, element2)
  yield("A #{element1} and #{element2} sandwich")
end

puts make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| "#{b} on wheat" }

def map(source_array)
  new_arr = []
  index = 0
  
  while index < source_array.length do
    new_arr << (source_array yield)
    index += 1
  end
  new_arr
end

map(source_array) { |c| 