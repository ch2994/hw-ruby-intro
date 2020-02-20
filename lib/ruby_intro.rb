# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  arr.each {|x| result += x}
  return result
  # YOUR CODE HERE
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort!
    return arr[-1] + arr[-2]
  end
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  wanted = Hash.new
  arr.each {|x|
    if wanted.key?(n-x)
      return true
    end
    wanted[x] = true
  }
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  excluded = Set['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u']

  if s.empty?
    return false
  else
    target = s[0]
    isAlpha = target =~ /[[:alpha:]]/
    if isAlpha == nil
      return false
    elsif excluded.include?(target)
      return false
    else
      return true
    end
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  elsif s.delete('01') == ''
    num = s.to_i(2)
    return num % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
