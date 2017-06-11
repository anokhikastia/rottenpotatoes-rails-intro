# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  unless arr.any?
    return 0
  end
  return arr.reduce(:+)

def max_2_sum arr
  # YOUR CODE HERE
  unless arr.any?
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  max1 = arr.max
  return max1 + (arr.delete(max1)).max

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each do |a|
    if arr.include? (n - a)
        return true
    end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  arr = ["A", "E", "I", "O", "U"]
  if arr.include? ((s[0]).upcase)
    return true
end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.isEmpty() or s !~ /[^01]/
    return false 
end
  elif s[s.length - 1] == 0 and s.length == 1
    return true
end 
  if s[s.length - 1] == 0
    if s[s.length - 2] == 0
        return true
    end 
  return false 
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price
def initialize(isbn, price)
    if isbn.isEmpty or price <= 0
        raise ArgumentError
    end 
    @isbn = isbn
    @price = price
end 

def price
  @price
end

def price_as_string
    result = ''
    result << "$" << (self.price).to_str
    if !result.include? ('.')
        result << ".00"
    elsif result[result.length - 2] == '.'
        result << "0"
    return result
end
