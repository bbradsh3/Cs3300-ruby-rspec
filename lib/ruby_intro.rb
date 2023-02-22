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
  "Hello, " + name
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
