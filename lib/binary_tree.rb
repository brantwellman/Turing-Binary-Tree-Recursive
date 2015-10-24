require 'pry'
require './lib/node'

class BinaryTree
  attr_reader :head

  def count
    if head.nil?
      0
    else
      head.count
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
    head.data == data
  end
end
