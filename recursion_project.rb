require 'pry-byebug'

# --------------------------------#
# Assignment 1
# --------------------------------#


#Fibonacci Sequence without recursion
# This method takes a number(n) and returns an array
# containing n amount of fibonacci numbers.
def fib(n)
  output = []
  i = 0
  while i < n
    case i
    when 0 then output << 0
    when 1 then output << 1
    else output << output[i - 1] + output[i - 2]
    end
    i += 1
  end
  output
end

p fib(8)
