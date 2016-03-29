require "minitest/autorun"
require "minitest/pride"
require "./node"
require "./linked_list"

class NodeTest < Minitest::Test

  def test_node_works
    node = Node.new("plop")
    result = node.data
    assert_equal "plop", result
    result = node.next_node
    assert_equal nil, result
  end






end
