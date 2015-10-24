require './lib/binary_tree'
require './lib/node'
require 'pry'


tree = BinaryTree.new
numbers = ["3", "4", "2", "5"]
numbers.each do |num|
  tree.push(num)
end
tree.push("6")
p tree
puts tree.count
