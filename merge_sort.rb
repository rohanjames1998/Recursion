require 'pry-byebug'

def merge_sort(arr)
  if arr.length == 2
    left_half = Array.new
    left_half << arr[0]
    right_half = Array.new
    right_half << arr[1]
  else
    index_1 = arr.length/2.round
    index_2 = arr.length
    left_half = merge_sort(arr[0...index_1])
    right_half = merge_sort(arr[index_1...index_2])
  end
  output = []
right_half.each_with_index do |ele, i|
  if left_half[i] == nil
    output << ele
  elsif ele > left_half[i]
    output << left_half[i]
    output << ele
  elsif ele < left_half[i]
    output << ele
    output << left_half[i]
  else
    output << ele
    output << left_half[i]
  end
  return output
end
end



p merge_sort([4,3,2,1])

