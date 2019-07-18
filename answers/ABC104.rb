=begin
s = gets.chomp
ans = 'WA'
count = 0

if s[0] == 'A'
  (2..s.length-2).each do |i|
    if s[i] == 'C'
      count += 1
    end
  end
  if count == 1
    ans = 'AC'
  end
else
end

puts ans
=end

d, g = gets.chomp.split.map(&:to_i)
arr = []
d.times do |i|
  pt, cv = gets.chomp.split.map(&:to_i)
  arr << [100*(i+1), pt, cv]
end

pt_arr = []
arr.length.times do |i|
  pt, num, bo = arr[i]
  sum = []
  for i in 1..num do
    if i == num
      sum << pt*i+bo
      break
    end
    sum << pt*i
  end
  pt_arr << sum
end




