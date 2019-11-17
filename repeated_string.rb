string = gets.to_s
n = gets.to_i
length = string.length-1

if n%length == 0
  puts string.scan('a').count * (n/length)
else
  a = string.scan('a').count * (n/length)
  a += string[0..((n%length)-1)].scan('a').count
  puts a
end
