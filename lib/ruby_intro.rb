# When done, submit this entire file to the autograder.

# Part 1
#Author: Ashwin Ashokan , 230002171
#Finished HW1 , and all the tests passed
def sum arr
  # YOUR CODE HERE
  retVal = 0
  if arr.length() == 0
    return retVal
  else
    for val in arr
      retVal+=val
    end 
  end
  
  return retVal
  
end


def max_2_sum arr
  # YOUR CODE HERE
  retVal = 0
  
  if arr.length() == 0
    return retVal
  
  elsif arr.length() == 2
    arr = arr.sort{|x,y| y <=> x}
    return arr[0]+ arr[1]
  elsif arr.length == 1
    return arr[0]
  else
    arr = arr.sort{|x,y| y <=> x}
    return arr[0]+arr[1]
  end
    
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.nil? || arr.length==1
    return false
  end
  arr = arr.sort
  
  for ind in 0..arr.length-1
    if arr.index(n-arr[ind])!=nil && arr.index(n-arr[ind])!=ind
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.nil? || s.length==0
    return false
  elsif s[0].downcase.match(/[bcdfghjklmnpqrstvwxys]/)
    return true
  else 
    return false
  end
end

def binary_multiple_of_4? s
  if s.nil? || s.length==0
    return false
  elsif s.match(/[^01]/)
    return false
  elsif s.to_i(2)%4==0
    return true
  else 
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn="",price=0)
    
    raise ArgumentError.new(
      "Expected isbn must be a string and price >0"
      ) if price <=0 || isbn.nil? || isbn.length==0
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    price = @price.to_s
    
    if price.index('.')
      req_suffix = price.length - price.index('.')-1
      if price.length - price.index('.')-1 < 2
        suffix = "";
        while  req_suffix> 0
          suffix+="0"
          req_suffix-=1;
        end
        
        return "$"+price + suffix
      else
        return "$"+price
      end
    
    else
      return "$"+price + ".00"
    end
  end

end
