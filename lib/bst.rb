require './lib/binary_tree'
require './lib/node'
require 'pry'


tree = BinaryTree.new
tree.push("2")
# puts tree.maximum + "max"
# puts tree.minimum + "min"
puts "count"
puts tree.count
p tree
# binding.pry
tree.push("3")
# puts tree.maximum + "max"
# puts tree.minimum + "min"
puts "count"
puts tree.count
p tree
# binding.pry
tree.push("1")
# puts tree.maximum + "max"
# puts tree.minimum + "min"
puts "count"
puts tree.count
p tree
# binding.pry
tree.push("5")
# puts tree.maximum + "max"
# puts tree.minimum + "min"
puts "count"
puts tree.count
p tree
# binding.pry
tree.push("6")
# puts tree.maximum + "max"
# puts tree.minimum + "min"
puts "count"
puts tree.count
p tree
# puts "count"
# p tree.count
# binding.pry
# puts tree.maximum
# puts tree.minimum


# p tree.include?("3")
# p tree.include?("4")
# p tree.include?("2")
# p tree.include?("8")
# p tree.include?("5")

# numbers = (0..1000).to_a.sample(16)
# tree = BinaryTree.new
# numbers.each do |num|
#   binding.pry
#   tree.push(num)
# end
#
# puts tree.inspect
# puts tree.count
