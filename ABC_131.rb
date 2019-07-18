=begin
n = gets.to_i
pair = []
n.times do
  a,b = gets.split.map(&:to_i)
  pair << [b,a]
end
pair.sort!

accum = 0
ans = 'Yes'
pair.each do |pa|
  b,a = pa
  accum += a
  if b < accum
    ans = 'No'
    break
  end
end

puts ans
=end

n = gets.to_i
hash = {}
n.times do
  x,y = gets.split.map(&:to_i)
  if hash[x].nil?
    hash[x] = []
    hash[x] << y
  else
    hash[x] << y
  end
end

array = []

init_count = 0
hash.each do |_,v|
  init_count += v.size
  array << v
end

array.sort!{|x,y| y.size <=> x.size }

cluster = []

array.each do |arr|
  
end