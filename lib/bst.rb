require './lib/binary_tree'
require './lib/node'
require 'pry'


tree = BinaryTree.new
tree.push("3")

tree.push("1")
tree.push("5")
tree.push("6")
tree.push("4")
p tree
p tree.count
# puts tree.maximum
# puts tree.minimum


# p tree.include?("8")
p tree.depth_of("8")
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
