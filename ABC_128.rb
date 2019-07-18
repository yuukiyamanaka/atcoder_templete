=begin
a, p = gets.split.map(&:to_i)
puts (3*a + p) / 2

n = gets.to_i
arr = []
n.times do |i|
  s, pt = gets.split
  pt = pt.to_i
  arr << [s, pt, i+1]
end

ans = []
n.times do |i|
  injection = arr[i]
  if i == 0
    ans.push(injection)
    next
  end
  
  i.times do |k|
    if k == (i - 1)
      if ans[k][0] < injection[0]
        ans.push(injection)
        break
      else
        if ans[k][0] > injection[0]
          ans.insert(k, injection)
          break
        else
          if ans[k][1] > injection[1]
            ans.push(injection)
            break
          else
            ans.insert(k, injection)
            break
          end
        end
      end
      
      
    end

    next if ans[k][0] < injection[0]
    if ans[k][0] == injection[0]
      next if ans[k][1] > injection[1]
      if ans[k][1] < injection[1]
        ans.insert(k, injection)
        break
      end
    end
    ans.insert(k, injection)
    break
  end
end

puts ans.map{|arr| arr[2] }

=end



n, m = gets.split.map(&:to_i)
k_arr = []
s_arr = []

m.times do |i|
  k, *s = gets.split.map(&:to_i)
  k_arr << k
  s_arr << s
end

p_arr = gets.split.map(&:to_i)

ans = 0

(2**n).times do |i|
  o = i.to_s(2)
  state = []
  o.chars {|ch| state.unshift(ch.to_i)}
  if n > state.length
    (n - state.length).times {|i| state.unshift(0)}
  end

  m.times do |k|
    on_num = 0
    s_arr[k].length.times do |j|
      index = s_arr[k][j]
      if state[index-1] == 1
        on_num += 1
      end
    end

    if on_num % 2 != p_arr[k]
      break
    end
    if k == m - 1
      ans += 1
    end
  end

end

puts ans
