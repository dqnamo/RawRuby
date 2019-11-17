n = gets.to_i
path = gets.to_s
elevation = 0
count = 0
valley = false

path.split("").each do |i|
  i == 'U' ? elevation += 1 : elevation -= 1
  
  if elevation == 0 && valley
    count += 1
    valley = false
  elsif elevation == -1
    valley = true
  end
end

puts count
