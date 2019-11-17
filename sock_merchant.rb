n = gets.to_i
socks = gets.split(' ').map(&:to_i)
styles = socks.uniq

pairs = 0

styles.each do |s|
  pairs += socks.count(s)/2
end

puts pairs
