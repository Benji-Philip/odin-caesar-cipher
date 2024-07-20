def bubble_sort(array_to_sort)
  finished = false
  until finished
    finished = true
    array_to_sort.each_with_index do |num, index|
      if index != 0
        if num < array_to_sort[index - 1]
          array_to_sort[index] = array_to_sort[index - 1]
          array_to_sort[index - 1] = num
          finished = false
        end
      end
    end
  end
  array_to_sort
end

p bubble_sort([4, 3, 78, 2, 0, 2])
