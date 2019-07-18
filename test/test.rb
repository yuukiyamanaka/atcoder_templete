=begin
def hoge(array)
  m = array.length
  n = array[0].length
  zeros = []
  for i in (0..m-1)
    for j in (0..n-1)
      if array[i][j] == 0
        zeros << [i, j]
      end
    end
  end
  zeros.each do |c|
    i,j = c
    for s in (0..n-1)
      array[i][s] = 0
    end
    for t in (0..m-1)
      array[t][j] = 0
    end
  end
  array
end
=end

def hoge(array)
  m = array.length
  n = array[0].length
  zeros = {row: [], col: []}
  for i in (0..m-1)
    for j in (0..n-1)
      if array[i][j] == 0
        zeros[:row] << i
        zeros[:col] << j
      end
    end
  end
  zeros[:row].uniq! # ソート済み
  zeros[:col].uniq! # ソート済み

  row_count = 0
  col_count = 0
  c_flag = false
  r_flag = false
  for i in (0..m-1)
    if i == zeros[:row][row_count]
      c_flag = true
      row_count += 1
    end
    for j in (0..n-1)
      if j == zeros[:col][col_count]
        r_flag = true
        col_count += 1
      end
      array[i][j] = 0 if c_flag || r_flag
      r_flag = false
    end
    col_count = 0
    c_flag = false
  end
  array
end

array = []
array << gets.split.map(&:to_i)
array << gets.split.map(&:to_i)

p hoge(array)