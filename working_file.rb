class List
  attr_reader :head

  def count
    if head
      head.count
    else
      0
    end
  end

  def push(data)
    node = Node.new(data)
    if head.nil?
      @head = node
    else
      head.push(node)
    end
  end
end

class Node
  attr_accessor :data, :link

  def initialize(data)
    @data = data
  end

  def push(node)
    if link.nil?
      @link = node
    else
      link.push(node)
    end
  end

  def count
    if link
      link.count + 1
    else
      1
    end
  end
end



numbers = (0..1000).to_a.sample(16)
list = List.new
numbers.each do |num|
  list.push(num)
end

puts list.inspect
puts list.count
