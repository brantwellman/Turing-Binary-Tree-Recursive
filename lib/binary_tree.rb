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
      head.insert(node, data)
    end
  end

  def include?(data)
    if head.data.include?(data)
      true
    else
      head.nodes_include?(data)
    end
    # if head.data == data
    #   true
    # else
    #   head.nodes_include?(data)
    # end
  end

  def maximum
    # if count == 1
    #   head.data
    # else
      # binding.pry
    head.maximum_node(head)
    # end
  end
end
