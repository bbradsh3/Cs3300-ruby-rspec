# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum #applies the sum method to arr
end

def max_2_sum arr
  #applies the sort method which places items in order
  #then applies last method which gets largest 2 values with sum method invoked to sum the values
  return arr.sort.last(2).sum 
end

def sum_to_n? arr, n
  #tests to ensure at least 2 values in array
  arr.length < 2 ? false:
  #applies combination method to search for two combined values
  #applies find method with regex to designate two distinct x,y values that add up to equal third value n
  #returns true or false  
  (arr.combination(2).find{|x,y| x + y == n} ? true : false)
end

# Part 2

def hello(name)
  #concatenates string "Hello, " with name that is passed 
  return ("Hello, " + name)
end

def starts_with_consonant? s
  #regex that searches for character that is not a vowel
  #returns true if s is consonant
  /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  #constructor
  def initialize(isbn, price)
    #ArgumentErrors to handle when empty ISBN or Price is passed
    raise ArgumentError.new("ISBN cannot be empty") if isbn.empty?
    raise ArgumentError.new("Price cannot be empty") unless price > 0
    #sets isbn and price attributes    
    @isbn = isbn
    @price = price
  end

  #accessors that act as getters/setters
  attr_accessor :isbn
  attr_accessor :price

  #returns price as string, formatted as float with 2 decimal places
  def price_as_string
    "$%.2f" % @price
  end


end
