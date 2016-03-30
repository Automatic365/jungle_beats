require "minitest/autorun"
require "minitest/pride"
require "./linked_list"
require "./node"

class LinkedListTest < Minitest::Test


  def test_starts_at_nil
    list = LinkedList.new
    assert_equal nil, list.head
  end


  def test_it_can_append
    list = LinkedList.new
    node = Node.new("doop")
    result = list.append("doop")
    assert_equal "doop", node.data
  end

  def test_append_different_data
    list = LinkedList.new
    node = Node.new("pop")
    result = list.append("pop")
    assert_equal "pop", node.data
  end

  def test_add_one_node
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
    assert_equal nil, list.head.next_node
  end

  def test_add_two_node
    list = LinkedList.new
    list.append("doop")
    list.append("dop")
    assert_equal "doop", list.head.data
    assert_equal "dop", list.head.next_node.data
    assert_equal 2, list.count
  end

  def test_node_count
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("plop")
    assert_equal 3, list.count
  end

  def test_to_string
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("plop")
    assert_equal "doop deep plop", list.to_string
  end

  def test_it_can_find_tail
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("plop")
    assert_equal "plop", list.find_tail.data
  end

  def test_it_can_prepend
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.prepend("dopple")
    assert_equal "dopple", list.head.data
    assert_equal "doop", list.head.next_node.data
    assert_equal "dopple doop deep", list.to_string
  end

  def test_it_can_insert
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("dopple")
    list.insert(1,"weep")
    assert_equal "doop deep weep dopple", list.to_string
    assert_equal "doop", list.head.data
    assert_equal "deep", list.head.next_node.data
    assert_equal "weep", list.head.next_node.next_node.data
    assert_equal "dopple", list.find_tail.data
  end


end
