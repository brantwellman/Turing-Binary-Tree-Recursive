require './lib/binary_tree'
require './lib/node'
require 'pry'


tree = BinaryTree.new
numbers = ["3"]
numbers.each do |num|
  tree.push(num)
end
tree.push("4")
tree.push("5")
tree.push("6")
p tree
puts tree.count
# binding.pry
puts tree.maximum

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
