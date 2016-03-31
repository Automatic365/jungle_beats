require_relative "./node.rb"

class LinkedList

attr_reader :head, :count

  def initialize
    @head = nil
    @string = []
  end


  def append(data)
    @string << data
    if @head.nil?
      @head = Node.new(data)
    else
      find_tail.next_node = Node.new(data)
    end
    data
  end

  def count
    current_node = @head
    counter = 1
    while current_node.next_node != nil
      current_node = current_node.next_node
      counter += 1
    end
    counter
  end

  def to_string
    @string.join(" ")
  end

  def find_tail
    current_node = @head
    until current_node.next_node.nil?
      current_node = current_node.next_node
    end
    current_node
  end

  def includes?(query)
    current_node = @head
    while current_node.next_node != nil
      if current_node.data. == query
        return true
      else
        current_node = current_node.next_node
      end
    end
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node.nil?
      current_node = current_node.next_node
    end
    last_data = current_node.next_node.data
    current_node.next_node = nil
    last_data
    end



  def prepend(data)
    @string.unshift(data)
    head = Node.new(data)
    head.next_node = @head
    @head = head
    data
  end

  def find(index, elements)
    array = []
    counter = 0
    current_node = @head
    index.times do
    current_node = current_node.next_node
    end
    elements.times do
      array << current_node.data
      current_node = current_node.next_node
    end
    array.join(" ")
  end

  def insert(index, data)
    @string.insert(index, data)
      counter = 0
      current = @head
      if count < index
        nil
      else
        until counter == index
          previous = current
          current = current.next_node
          counter += 1
        end
        new_node = Node.new(data)
        previous.next_node = new_node
        new_node.next_node = current
    end
  end

end
