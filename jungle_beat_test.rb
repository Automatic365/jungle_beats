require "minitest/autorun"
require "minitest/pride"
require "./linked_list"
require "./node"
require "./jungle_beat"

class JungleBeatTest < Minitest::Test

  def test_if_jungle_beat_exists
    jb = JungleBeat.new
    assert JungleBeat, jb.class
  end

  def test_new_list_exists
    jb = JungleBeat.new
    assert_equal LinkedList, jb.list.class
    assert_equal nil, jb.list.head
  end

  def test_if_jungle_beat_append
    jb = JungleBeat.new
    assert_equal "deep doo ditt", jb.append("deep doo ditt")
  end


  def test_node_count
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
    jb.append("woo hoo shu")
    assert_equal 6, jb.count
  end

  def test_it_can_play
    jb = JungleBeat.new
    beats = "ding dah oom oom ding oom oom oom ding dah oom oom ding dah oom oom ding oom oom oom ding dah oom oom"
    jb.append(beats)
    jb.play
  end


end
