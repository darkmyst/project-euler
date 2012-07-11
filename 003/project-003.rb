# The prime factors of 13195 are 5, 7, 13, and 29
# What is the largest prime factor of 600851475143

TARGET = 600851475143

def get_factors(number)
  return [] if number <= 2
  lowest_factor = (2..number).find { |n| number % n == 0 }  
  [lowest_factor] + get_factors(number / lowest_factor)
end

puts get_factors(TARGET).max
