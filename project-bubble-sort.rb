def bubble_sort(arr)
  tmp = 0
  arr.each_index do |outer_index|
    arr.each_with_index do |current_value, index|
      # Break the loop if we are at the last element 
      break if index == arr.length - 1
      # Break the loop if we arrived at a sorted element
      break if index == arr.length - outer_index
      # Check two values and do swapping if the left value is large than the right value
      next_value = arr[index + 1]
      if current_value > next_value
        tmp = arr[index]
        arr[index] = arr[index + 1]
        arr[index + 1] = tmp 
      end
    end
  end
  arr
end

p bubble_sort([4,3,78,2,0,2])