t = gets.to_i
output = []
puts output

t.times do
  n = gets.to_i - 1
  queue = gets.split(' ').map(&:to_i)
  bribes = 0
  chaotic = false

  queue.each do |person|
    if person > queue.index(person) + 3
      output << "Too chaotic"
      chaotic = true
      break
    else
      if person > (queue.index(person) + 1)
        bribes += person - (queue.index(person) + 1)
      end
    end
  end

  if !chaotic
    output << bribes
  end
end

output.each do |value|
  if value != 0 || value == "Too chaotic"
    puts value
  end
end
