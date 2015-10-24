require 'pry'

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
      head.insert(node)
    end

  end
end

class Node
  attr_accessor :r_link, :l_link, :data

  def initialize(data)
    @data = data
  end

  def insert(node)
    if @data < node.data
      if r_link.nil?
        @r_link = node
      else
        r_link.insert(node)
      end
    elsif @data > node.data
      if l_link.nil?
        @l_link = node
      else
        l_link.insert(node)
      end
    end
  end

  def count
    if r_link && l_link
      r_link.count + 1 + (l_link.count)
    elsif r_link
      r_link.count + 1
    elsif l_link
      l_link.count + 1
    else
      1
    end
  end
end

tree = BinaryTree.new
numbers = ["3", "4", "2", "5"]
numbers.each do |num|
  tree.push(num)
end

p tree
puts tree.count
