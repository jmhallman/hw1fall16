# When done, submit this entire file to the ICON HW1 Dropbox.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  #test commit
  
  sumnum = 0
  if arr.length > 0
    arr.each do |i|
      sumnum = sumnum + i
    end
  end
  return sumnum
end

def max_2_sum(maxArray)
  # YOUR CODE HERE
  
  max1Index = 0

  if maxArray.length < 1
    return 0
  end
  
  if maxArray.length < 2
    return maxArray[0]
  end
 
  if maxArray.length > 1
    max1 = maxArray[0]
    max2 = maxArray[1]
    maxArray.each do |i|
      if i > max1
        max1 = i
        max1Index = maxArray.index(i)
      end
    end
    maxArray.each do |e|
      if e > max2
        if maxArray.index(e) != max1Index
          max2 = e
        end
      end
    end
  end
  
  maxSum = max1 + max2
  return maxSum
  
end

def sum_to_n?(array, n)
  # YOUR CODE HERE
  
  if array.length == 0
    return false
  end
  
  if array.length == 1
    return false
  end

  array.each do |i|
    array.each do |e|
      if (i + e) == n
        return true
      end
    end
  end
  
  return false
  
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
