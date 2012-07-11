total = 0
last = 1
current = 1
while current <= 4000000
  total += current if current % 2 == 0 
  last, current = current, current + last
end
puts total
