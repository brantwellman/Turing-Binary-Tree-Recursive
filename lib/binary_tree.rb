require 'pry'
require './lib/node'

class BinaryTree
  attr_reader :head

  def count
    if head.nil?
      0
    else
      head.node_count
    end
  end

  def push(data)
    node = Node.new(data)
    if head.nil?
      @head = node
    else
      head.insert(node)
    end
  end

  def include?(input)
    head.node_include?(head, input)
  end

  def depth_of(input)
    if !include?(input)
      puts "Sorry, that number is not in the tree."
      return false
    elsif head.data == input
      0
    else
      head.depth_of(head, input)
    end
  end

  def maximum
    head.maximum_node(head)
  end

  def minimum
    head.minimum_node(head)
  end
end
