class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  def pop
    pop_value = @data
    @data = @data.next_node
    return pop_value
  end
end

def reverse_list(list)
  output_list = Stack.new

  while list
    output_list.push(list.value)
    list = list.next_node
  end
  output_list
end

stack = Stack.new
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)

output_list = reverse_list(stack.data)
print_values(output_list.data)