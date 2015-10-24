require './lib/binary_tree'
require 'pry'

class Node
  attr_accessor :r_link, :l_link, :data

  def initialize(data)
    @data = data
  end

  def insert(new_node, data)
    if @data < new_node.data
      if r_link.nil?
        @r_link = new_node
      else
        r_link.insert(new_node, data)
      end
    elsif @data > new_node.data
      if l_link.nil?
        @l_link = new_node
      else
        l_link.insert(new_node, data)
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
