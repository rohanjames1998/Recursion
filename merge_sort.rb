require 'pry-byebug'

def merge_sort(arr)
  if arr.length == 1
   return arr
  else
    index_1 = arr.length/2.round
    index_2 = arr.length
    left_half = merge_sort(arr[0...index_1])
    right_half = merge_sort(arr[index_1...index_2])
  end
  output = []
  loop do
    if right_half[0] < left_half[0]
      output << right_half[0]
      right_half.delete_at(0)
    elsif left_half[0] > right_half[0]
      output << left_half[0]
      left_half.delete_at(0)
    else
      output << right_half[0]
      right_half.delete_at(0)
    end
    if right_half.empty?
      output << left_half
      output.flatten!
    end
    break if right_half.empty?
end
return output
end



p merge_sort([4,3,2,1,0])


# loop do
# if left_half[i] == nil
#   output << ele
# elsif ele > left_half[i]
#   output << left_half[i]
#   left_half.delete_at(i)
# elsif ele < left_half[i]
#   output << ele
#   right_half.delete_at(i)
# else
#   output << ele
#   output << left_half[i]
# end
# i += 1
# break if right_half
