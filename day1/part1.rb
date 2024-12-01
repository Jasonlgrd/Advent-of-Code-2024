left = []
right = []
File.foreach("input.txt") do |line|
  split = line.split('   ')
  left << split[0]
  right << split[1].strip
end

total = 0
for i in 0..left.count do
  min_left = left.min.to_i
  min_right = right.min.to_i
  total += (min_left - min_right).abs
  if i < 1000
    left.delete_at(left.find_index(min_left.to_s))
    right.delete_at(right.find_index(min_right.to_s))
  end
end

puts total