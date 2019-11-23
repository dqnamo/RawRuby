n = gets.to_i
arr = []
swaps = 0

n.times do
  arr << gets.to_i
end

arr.each do |i|
  if i > arr(arr.index(i) + 1)
    swap(arr.index(i), (arr.index(i) + 1))
  end
end

puts swaps

def swap(x,y)
  arr[x], arr[y] = arr[y], arr[x]
  swap += 1
end
