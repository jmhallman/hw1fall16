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
    #print max1Index
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
      if (i + e) == n and array.index(i) != array.index(e)
        return true
      end
    end
  end
  
  return false
  
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  
  return "Hello, " + name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  
  regex = /\A(?=[^aeiou])(?=[a-z])/i
  if s =~ regex
    return true
  else
    return false
  end
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  
  regex = /^[10]*00$/
  if s =~ regex || s == "0"
    return true
  else
    return false
  end

end

# Part 3

class BookInStock
# YOUR CODE HERE

  def initialize(isbn, price)
    if isbn == ""
      raise ArgumentError.new("Must enter an ISBN number")
    end
    if price == 0
      raise ArgumentError.new("Price cannot be zero")
    end
    if price < 0
      raise ArgumentError.new("Price cannot be less than zero")
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    finalPrice = "$" + price.to_s
    regex1 = /\.[0-9]/
    regex2 = /\.[0-9][0-9]/
    
    if finalPrice =~ regex2
      return finalPrice
    end
    
    if finalPrice =~ regex1
      finalPrice = finalPrice + "0"
    else
      finalPrice = finalPrice + ".00"
    end
    
    return finalPrice
    
  end
  
end
