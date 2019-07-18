=begin
a, b = gets.split.map(&:to_i)
ans = 0

ans = a > 12 ? b : a > 5 ? b /2 : 0

puts ans


r, d, x0 = gets.split.map(&:to_i)

x_r = x0
10.times do |i|
  x_r = r*x_r - d
  puts x_r
end
=end

=begin
n, m = gets.split.map(&:to_i)
lmax = 0
rmin = n
m.times do |i|
  l, r = gets.split.map(&:to_i)
  lmax = l > lmax ? l : lmax
  rmin = rmin > r ? r : rmin
end

ans = (rmin - lmax + 1) > 0 ? rmin - lmax + 1 : 0

puts ans

=end

n, m = gets.split.map(&:to_i)
a_n = gets.split.map(&:to_i).sort!
b_m = []
c_m = []
m.times do |i|
  b, c = gets.split.map(&:to_i)
  b_m << b
  c_m << c
end

sorted_index = 0
m.times do |i|
  p a_n
  b = b_m[i]
  c = c_m[i]
  (b).times do |j|

    if c > a_n[sorted_index]
      a_n[sorted_index] = c
      sorted_index += 1
      next
    end

    a_n.sort!
    sorted_index = 0

    if c > a_n[sorted_index]
      a_n[sorted_index] = c
      sorted_index += 1
      next
    end
  end

end

puts a_n.inject(&:+)
