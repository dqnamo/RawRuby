words = Hash.new

gets.to_i.times do
  words[gets.chomp.to_s] = gets.chomp.to_s
end

words.each do |key, value|
  if (key.split('') & value.split('')).any?
    puts "YES"
  else
    puts "NO"
  end
end
