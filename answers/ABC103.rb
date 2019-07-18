=begin 

a = gets.split.map(&:to_i)
a.sort!
sum = 0

for i in  0..a.length-1 do
  if i == (a.length-1)
    puts sum
    break
  end
  sum += a[i+1] - a[i]
end
s = gets.chomp
t = gets.chomp
ans = false

for i in 0..s.length-1 do
  new_st = s[i+1..s.length-1] + s[0..i]
  if new_st == t
    ans = true
    break
  end 
end

puts (ans ? 'Yes' : 'No')


n, m = gets.split.map(&:to_i)
pairs = []
m.times do |i|
  pairs << gets.split.map(&:to_i)
end

hash = {}

ite = 0
pairs.each do |pair|
  a = pair[0]
  b = pair[1]
  if hash[a].nil?
    hash[a] = []
    hash[a] << ite
  else
    hash[a] << ite
  end
  if hash[b].nil?
    hash[b] = []
    hash[b] << ite
  else
    hash[b] << ite
  end
  ite += 1
end

temp_arr = []
count = 0

for i in 1..n do
  if hash[i].nil?
    next
  end

  hash[i].each do |j|
    if temp_arr.include?(j)
      count += 1
      temp_arr = []
      break
    else
    end
  end

  temp_arr += hash[i]

end

puts count
=end

n = gets.to_i
a = gets.split.map(&:to_i)

a.sort!
ans = a[0] - 1
gcd = a[0]

for i in 1..a.length-1 do
  int = ans % a[i]
  amari = gcd % a[i]
  above = true
  while above do
    int += amari
    if int > 
  end
end