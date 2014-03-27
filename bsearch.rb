require 'rubygems'
require 'pry-debugger'
module ArrayUtil
  def self.bsearch(array, element)
   # If the array is empty return a result
    if array.length < 1
      return false
    else
       _bsearch(array, element, 0, array.length - 1)
    end
  end
  
  #[1, 2, 3, 4, 5]
  def self._bsearch(array, element, start_index, end_index)
    # If the start and end indeces are the same, search
    # that element and return true
      if start_index == end_index
        if array[start_index] == element
          return true
        #return false for arrays with 1 item not equal to element
        else
          return false
        end
        # Otherwise, find the midpoint
      else
        midpoint = start_index + (end_index - start_index) / 2
          if element > array[midpoint]
            #call ._bsearch on this half of array
            _bsearch(array, element, midpoint + 1, end_index)
          else 
            #call ._bsearch on other half of array
            _bsearch(array, element, start_index, midpoint)
          end
      end
  end
end
