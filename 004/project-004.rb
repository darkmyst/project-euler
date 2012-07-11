# A palindromic number reads the same both ways. The largest palindrome 
# made from the product of two 2-digit numbers is 9009 = 91  99.
# Find the largest palindrome made from the product of two 3-digit numbers.

palendrome_numbers = []

(100..999).each do |x|
  (x..999).each do |y|
    product = x * y
    palendrome_numbers << product if product.to_s.reverse.to_i == product    
  end
end

puts palendrome_numbers.max
