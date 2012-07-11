# The prime factors of 13195 are 5, 7, 13, and 29
# What is the largest prime factor of 600851475143

# I can't really take credit for this.  In trying to brush up on
# my understanding of how to calculate factorials of a number
# I stumbled across a ruby method on the web that calculated
# factorials so simply and concisely, I couldn't help but absorb
# the logic before I realized it was exactly what I needed to
# write. Try as I might to write it differently, the beauty of
# the solution at http://www.benrady.com/2009/11/katarubyprime-factors.html
# prevented me from writing lesser code.  The code below, therefore,
# for better or worse, is essentially plagiarism. I don't regret it.
# I learned something.

TARGET = 600851475143

def get_factors(number)
  return [] if number <= 2
  lowest_factor = (2..number).find { |n| number % n == 0 }  
  [lowest_factor] + get_factors(number / lowest_factor)
end

puts get_factors(TARGET).max
