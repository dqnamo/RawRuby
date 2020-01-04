#[[0, 2], [0, 2], [0, 5], [0, 6], [0, 2], [0, 2], [0, 2], [0, 5], [0, 6], [0, 2], [2, 5], [0, 2], [0, 2], [0, 5], [0, 6], [0, 2], [2, 5], [6, 2], [2, 5]]

#[[0, 1], [0, 2], [0, 3], [1, 3], [2, 3]]
# k.times do |i|
#
#     profit = 0
#     b = 0
#     new_array = transactions.clone
#     new_array.each do |y|
#       print y
#       if b <= i
#         profit += @array[y[1]] - @array[y[0]]
#         b += 1
#
#         transactions.each do |x|
#           if x[0].between?(0, y[1]) || x[1].between?(0, y[1])
#             new_array.delete(x)
#           end
#         end
#         print new_array
#       else
#         timelines << profit
#         next
#       end
#     end
#   end


# def find_route(first, list, profit, moves)
#   profit += @array[first[1]] - @array[first[0]]
#   moves += 1
#
#   new_array = list.clone
#   list.each do |x|
#     if x[0].between?(0, first[1]) || x[1].between?(0, first[1])
#       new_array.delete(x)
#     end
#   end
#
#   if new_array.any? && moves < @k
#     find_route(new_array.last, new_array, profit, moves)
#   else
#     return profit
#   end
# end
#
# transactions.each do |t|
#
#   puts (find_route(t, transactions, 0, 0))
# end
