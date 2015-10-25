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
    if head.data == input
      true
    else
      head.node_include?(head, input)
    end
  end

  def maximum
    head.maximum_node(head)
  end

  def minimum
    head.minimum_node(head)
  end
end
