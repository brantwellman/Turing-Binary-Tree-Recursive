class BinaryTree
  attr_reader :head

  def count
    if head.nil?
      0
    else
      count = 1
      current = head

      if current.r_link?
        count += 1
      end
      if current.l_link?
        count += 1
      end

      # while current.link?
      #   count += 1
      #   current = current.link
      # end
      count
    end
  end

  def push(data)
    node = Node.new(data)
    if head.nil?
      @head = node
    else
      head.push(node)
      ##### This is the recursive call
      # target = head
      # while target.link?
      #   target = target.link
      # end
      # target.link = Node.new(data)
    end

  end
end

class Node
  attr_accessor :r_link, :l_link, :data

  def initialize(data)
    @data = data
  end

# This is the recursive method to push on
  def push(node)
    if data > node.data
      if r_link.nil?
        @r_link = node
      else
        r_link.push(node)
      end
    elsif data < node.data
      if l_link.nil?
        @l_link = node
      else
        l_link.push(node)
      end
    end
  end

  def r_link?
    r_link
  end

  def l_link?
    l_link
  end
end

tree = BinaryTree.new
numbers = ["3", "4"]
numbers.each do |num|
  tree.push(num)
end

p tree
p tree.count
