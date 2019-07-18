=begin
input:
aabcccccaaa
output:
a2b1c5a3

=end

s = gets.split("")

size = 0

for i in  0..s.length-1 do
  if (s[i] != s[i+1] || i > s.length-1)
    size += 1
  end
end

if size >= s.length
  puts s
  exit
end

compressed = Array.new(size*2)
count = 0
u = 1

for i in 0..s.length-1 do
  count += 1
  if (s[i] != s[i+1] || i > s.length-1)
    compressed[u*2-1] = s[i]
    compressed[u*2] = count
    u += 1
    count = 0
  end
end

puts compressed.join