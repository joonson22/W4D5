# my_min
# Given a list of integers find the smallest number in the list.

# Example:

#     list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#     my_min(list)  # =>  -5
# Phase I
# First, write a function that compares each element to every other element of the list. Return the element if all other elements in the array are larger.
# What is the time complexity for this function?

def my_min(arr)
  arr.each do |num1|
    return num1 if arr.all? {|num2| num1 <= num2}
  end
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#   p my_min(list)  # =>  -5

# Phase II
# Now rewrite the function to iterate through the list just once while keeping track of the minimum. What is the time complexity?

# def my_min(arr)
#   min = arr[0]
#   arr.each {|ele| min = ele if ele < min}
#   min
# end

# Largest Contiguous Sub-sum
# You have an array of integers and you want to find the largest contiguous (together in sequence) sub-sum. Find the sums of all contiguous sub-arrays and return the max.

# Example:

#     list = [5, 3, -7]
#     largest_contiguous_subsum(list) # => 8

#     # possible sub-sums
#     [5]           # => 5
#     [5, 3]        # => 8 --> we want this one
#     [5, 3, -7]    # => 1
#     [3]           # => 3
#     [3, -7]       # => -4
#     [-7]          # => -7
# Example 2:

#     list = [2, 3, -6, 7, -6, 7]
#     largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
# Example 3:

#     list = [-5, -1, -3]
#     largest_contiguous_subsum(list) # => -1 (from [-1])
# Phase I
# Write a function that iterates through the array and finds all sub-arrays using nested loops. First make an array to hold all sub-arrays. Then find the sums of each sub-array and return the max.

# def largest_contiguous_subsum(arr)
#   sums = []
#   (0...arr.length).each do |start|
#     (start...arr.length).each do |last|
#       sums << arr[start..last].sum
#     end
#   end
#   sums.max
# end

#     list = [5, 3, -7]
#     p largest_contiguous_subsum(list) # => 8

# Discuss the time complexity of this solution.

# Phase II
# Let's make a better version. Write a new function using O(n) time with O(1) memory. Keep a running tally of the largest sum.
def largest_contiguous_subsum(arr)
  max_so_far = 0
  max = 0
  arr.each do |ele|
    max_so_far += ele
    if max_so_far < 0
      max_so_far = 0
    elsif max_so_far > max
      max = max_so_far
    end
  end
  max
end

    # list = [5, 3, -7, 6] #=> 8
    # p largest_contiguous_subsum(list) # => 8
    list = [2, 3, -6, 7, -6, 7]
    p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
# Get your story straight, and then explain your solution's time complexity to your TA.

# arr = [1, 2, 3, 4, 5]

# p arr.inject {|acc, ele| acc += ele}