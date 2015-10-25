require './lib/binary_tree'
require './lib/node'
require 'pry'

tree = BinaryTree.new
# tree.push("3")
# tree.push("1")
# tree.push("5")
# tree.push("6")
# tree.push("4")
# tree.push("7")

numbers = (0..1000).to_a.map{|n| n.to_s }.sample(100)
numbers.each do |num|
  tree.push(num)
end

p tree
p tree.count

puts tree.maximum
puts tree.minimum

p tree.include?("9")
p tree.depth_of("7")

p tree.sort
