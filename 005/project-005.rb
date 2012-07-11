candidate = 20 
target_range = (11..20)
max = target_range.inject(1) { |s,n| s * n }
while candidate <= max
  break if target_range.find { |n| candidate % n != 0 } == nil
  candidate += 20 
end

puts candidate
