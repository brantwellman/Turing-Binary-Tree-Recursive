require './lib/binary_tree'
require 'pry'

class Node
  attr_accessor :r_link, :l_link, :data

  def initialize(data)
    @data = data
  end

  def insert(new_node)
    if @data < new_node.data
      if r_link.nil?
        @r_link = new_node
      else
        r_link.insert(new_node)
      end
    elsif @data > new_node.data
      if l_link.nil?
        @l_link = new_node
      else
        l_link.insert(new_node)
      end
    end
  end

  def node_count
    if r_link && l_link
      r_link.node_count + 1 + (l_link.node_count)
    elsif r_link
      r_link.node_count + 1
    elsif l_link
      l_link.node_count + 1
    else
      1
    end
  end

  def node_include?(node, input)
    if node.r_link.nil? && node.l_link.nil?
      node.data == input
    elsif node.data == input
      true
    elsif (input > node.data) && node.r_link
      node_include?(node.r_link, input)
    elsif (input < node.data) && node.l_link
      node_include?(node.l_link, input)
    else
      false
    end
  end

  def node_depth(node, input)
    if !node_include?(node, input)
      puts "Sorry, no depth for a number not in the tree."
      return false
    elsif node.data == input
      0
    elsif (input > node.data) && node.r_link
      node_depth(node.r_link, input) + 1
    elsif (input < node.data) && node.l_link
      node_depth(node.l_link, input) + 1
    end
  end

  def maximum_node(node)
    if node.r_link.nil?
      node.data
    else
      maximum_node(node.r_link)
    end
  end

  def minimum_node(node)
    if node.l_link.nil?
      node.data
    else
      minimum_node(node.l_link)
    end
  end

  def sort_nodes(node)
    sorted = []
    if node.l_link
      sorted << sort_nodes(node.l_link)
    end
    sorted << node.data
    if node.r_link
      sorted << sort_nodes(node.r_link)
    end
    sorted.flatten!
    sorted
  end

end
