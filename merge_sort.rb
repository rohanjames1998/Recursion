
def merge_sort(arr)
  # Base Case: Return the sorted (1 length) array.
  return arr if arr.length == 1
  # Dividing array into two parts as evenly as possible.
    index = arr.length/2.round
    left_half = merge_sort(arr[0...index])
    right_half = merge_sort(arr[index...arr.length])

  output = []
  loop do
    # Comparing and deleting first elements to avoid duplications.
    if right_half[0] <= left_half[0]
      output << right_half[0]
      right_half.delete_at(0)
    elsif left_half[0] <= right_half[0]
      output << left_half[0]
      left_half.delete_at(0)
    end

    # If one half becomes empty, we just add the other half to output and break the loop.
    if right_half.empty?
      left_half.each{ |x| output << x }
      break
    elsif left_half.empty?
      right_half.each{ |x| output << x}
      break
    end
end
return output
end



p merge_sort([12,3,0,4121,31,44,2121,31,0])
p merge_sort([5,4,3,2,1,0,-1])

