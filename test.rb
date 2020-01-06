input = gets.chomp.to_s
split = input.split('')
chars = []
combos = []

split.each do |c|
  chars << c
end

i = 1
while i < input.length do
  chars.combination(i).to_a.each do |c|
    combos << c
  end
  i += 1
end

combos.each do |x|
  x.each do |y|
    print y
  end
  puts "\n"
end
