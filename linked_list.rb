require_relative "./node.rb"

class LinkedList

attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
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

  def prepend(data)
    @string.unshift(data)
    head = Node.new(data)
    head.next_node = @head
    @head = head
    data
  end

  def insert(index, data)
    inserted_node = Node.new(data)
    data = @string.insert(index +1, data)

  end



end



# @string << data
# @count += 1
# node = Node.new(data)
# if @head.nil?
#   @head = node
# else
#   add_node(node)
# end


















# def to_string
#   array = [@head.data]
#   current_node = @head
#   while current_node != nil
#     array << current_node
#     current_node = current_node.next_node
#   end
#   array << current_node
#   array.join(" ")
# end
