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

#   def nodes_include?(data)
# #   r link.data inlude? data
# #   or does l link.data include? data?
#     if l_link.data.include?(data) || r_link.data.include?(data) == true
#       true
#     elsif l_link.nodes_include?(data) == true
#       true
#     elsif r_link.nodes_include?(data) == true
#       true
#     else
#       false
#     end
#   end

  def maximum_node(node)
    if r_link == nil
      data
    else
      node.data = node.r_link.data
      node = node.r_link
      r_link.maximum_node(node)
    end
  end

end
