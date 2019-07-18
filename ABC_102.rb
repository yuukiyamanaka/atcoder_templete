n = gets.to_i
a = gets.split.map(&:to_i)

it = -1
a_st = a.map do |k|
  it += 1
  k - it
end

a_min = a_st.min
a_st = a_st.map do |k|
  k - a_min
end

a_st.sort{|a, b| b <=> a }

upper = 0
bottom = 0
sum = a_st.reduce {|sum, u| sum + u }

bottom = 0
upper = 0
ans = 0
ite = 0
(a_st[0]..a_st[-1]).each do |n|
  while n > a_st[ite]
    ite += 1
  end
  
=begin
  acc += a_st[i]
  if acc > sum / 2
    if (acc - (sum - acc)) < ((sum - pre_acc) - pre_acc)
      ans = (acc - (sum - acc))*2
    else
      ans = ((sum - pre_acc) - pre_acc)*2
    end
    break
  end
  pre_acc += a_st[i]
=end
end

puts ans
