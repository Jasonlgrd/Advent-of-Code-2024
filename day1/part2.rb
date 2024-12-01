left = []
right = []
File.foreach("input.txt") do |line|
  split = line.split('   ')
  left << split[0]
  right << split[1].strip
end

total = 0

left.each do |x|
  x = x.to_i
  it = 0
  right.each do |y|
    y = y.to_i
    if x == y
      it += 1
    end
  end
  total += (x * it)
end

puts total