require 'pry-byebug'

def merge_sort(arr)

return arr if arr.length == 1

  index_1 = arr.length/2.round
  index_2 = arr.length - index_1

  left_half = merge(arr[0..index_1])
  right_half = merge(arr[index_1..index_2])
end

