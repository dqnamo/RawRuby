n = gets.to_i
clouds = gets.split(' ').map(&:to_i)
jumps = 0
current_position = 0

while current_position != clouds.length - 1 do
  if clouds[current_position + 2] == 0
    current_position += 2
    jumps += 1
  else
    current_position += 1
    jumps += 1
  end
end

puts jumps
