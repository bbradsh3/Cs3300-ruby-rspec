# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  return arr.sort.last(2).sum
end

def sum_to_n? arr, n
  arr.length < 2 ? false:
  (arr.combination(2).find{|x,y| x + y == n} ? true : false)
end

# Part 2

def hello(name)
  return ("Hello, " + name)
end

def starts_with_consonant? s
  /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock

  def initialize(isbn, price)
    raise ArgumentError.new("ISBN cannot be empty") if isbn.empty?
    raise ArgumentError.new("Price cannot be empty") unless price > 0
    @isbn = isbn
    @price = price
  end

  def book
    @isbn
    @price
  end
  
  attr_accessor :isbn
  attr_accessor :price

  def price_as_string
    "$%.2f" % @price
  end


end
