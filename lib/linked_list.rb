require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    return if head.nil?
    return head if tail.nil?

    reversed = LinkedList.new
    reversed.head = Node.new(tail.value, next_node = tail.prev_node)
    byebug
    puts head.value
    puts tail.value
    puts reversed.head.value
    # reversed.tail = tail.prev_node
    # reversed.tail = head
    # reversed
  end

  private
  def reverse_node(node)
    reversed_node = Node.new(node.value, next_node.node.prev_node, prev_node.node.next_node)
  end
end
