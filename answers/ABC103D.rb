n, m = gets.split.map(&:to_i)
pairs = []
m.times do |i|
  pairs << gets.split.map(&:to_i)
end

hash = {}

pairs.each do |pair|
  a = pair[0]
  b = pair[1]
  if hash[a].nil?
    hash[a] = []
    hash[a] << b
  else
    hash[a] << b
  end
  if hash[b].nil?
    hash[b] = []
    hash[b] << a
  else
    hash[b] << a
  end
end

#p hash

temp_start_index = 0
count = 0

for i in 1..n do
  if hash[i].nil?
    next
  end

  hash[i].each do |j|
    if (j >= temp_start_index) && (i > j)
      #p [i, j]
      count += 1
      temp_start_index = i
      break
    else
    end
  end

end

puts count