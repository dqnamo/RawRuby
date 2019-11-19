a = (gets.to_s).chars
b = (gets.to_s).chars

count = 0

a.each do |x|
  if b.include? x
    count += 1
  end
end

puts (a.length + b.length - (count * 2))
