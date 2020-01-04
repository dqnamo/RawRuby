k = gets.to_i - 1

max = 0
transactions = []

array = [4,8,5,9]
sorted_array = array.sort.reverse

sorted_array.each do |x|
  num = array.index(x)

  if num != nil
    num = num-1
  else
    next
  end

  if num == -1
    left = []
  else
    left = array[0..num]
  end

  left.delete_if {|i| i > x}

  if left.any?
    a2 = left.sort
    profit = x - a2[0]
    transactions << profit
    array.slice!((array.index(a2[0]))..(array.index(x)))
  end
end

#Find the allowed transactions
transactions = transactions.sort.reverse
transactions = transactions[0..k]

i = 0
while i < transactions.length
  max += transactions[i]
  i = i + 1
end

puts max
