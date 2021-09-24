# frozen_string_literal: true
require_relative 'node'

class LinkedList

  def initialize
    # is a link to the next node
    @head = nil
    @tail = nil
  end

  # add new node to end of list
  def append(value)
    if @head.nil?
      prepend(value)
    else
      find_tail.next = Node.new(value)
    end
  end

  # add new node to start of list
  def prepend(value)
    if @head.nil?
      @head = Node.new(value)
    else
      old_point = @head
      @head = Node.new(value)
      @head.next = old_point
      # old_next = @head.next
      # p old_next
      # @head = Node.new(value)
      # @head.next = old_next
      # head is hi
      # replace head with new value
      # make head next the hi attribute
    end
  end

  # find last node of list
  def find_tail
    node = @head
    return node if !node.next
    return node if !node.next while (node = node.next)
  end

  # find size of list
  def size
    i = 0
    current_node = @head
    while current_node != nil do
      current_node = current_node.next
      i += 1
    end
    return i
  end

  # find first node of list
  def head
    return @head.data
  end

  # find last node of list
  def tail
    return find_tail.data
  end

  # find node at given index
  def at(index)
    i = 0
    current_node = @head
    while i != index do
      current_node = current_node.next
      i += 1
    end
    return current_node.data
  end

  # remove last element from list
  def pop
    last = find_tail.data
    node = find_before(last)
    node.next = nil
  end

  # check is value is in list
  def contains?(value)
    current_node = @head
    while current_node.next != nil do
      current_node = current_node.next
      return true if current_node.data == value
    end
   return false
  end

  # find index of value, if it is in the list
  def find(value)
    i = 1
    current_node = @head
    while current_node != nil do
      return i if current_node.data == value
      current_node = current_node.next
      i += 1
    end
    return nil
  end

  # delete value
  def delete(value)
    if @head.data == value
      @head = @head.next
      return
    end

    node = find_before(value)
    node.next = node.next.next
  end

  # find value that links to inputted value
  def find_before(value)
    node = @head
    return node if !node.next
    return node if node.next.data == value

    while (node = node.next)
      return node if node.next && node.next.data == value
    end
  end

  # print list as a string
  def to_s
    node = @head
    puts node.to_s

    while (node = node.next)
      puts node.to_s
    end
  end
end

list = LinkedList.new
list.append("hi")
list.append("bruh")
list.prepend("huh")
list.prepend("hello")
p list.contains?("hi")
p list.find("huh")
p list.size
p list.head
p list.tail
p list.at(2)
list.pop
list.delete("hi")
p list.size
list.to_s