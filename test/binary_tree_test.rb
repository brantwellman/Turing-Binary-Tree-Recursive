require 'minitest'
require 'minitest/autorun'
require './lib/binary_tree'
require './lib/node'

class BinaryTreeTest < Minitest::Test

  def test_that_it_exists
    tree = BinaryTree.new
    assert tree
  end

  def test_it_starts_with_a_count_of_zero
    tree = BinaryTree.new
    assert_equal 0, tree.count
  end

  def test_it_pushes_data_onto_an_empty_tree
    tree = BinaryTree.new
    tree.push("13")
    assert_equal "13", tree.head.data
    assert_equal 1, tree.count
  end

  def test_it_pushes_data_onto_an_existing_tree
    tree = BinaryTree.new
    tree.push("13")
    tree.push("15")
    tree.push("12")
    tree.push("11")
    tree.push("10")
    tree.push("14")
    assert_equal 6, tree.count
  end

  def test_it_checks_if_head_has_value_being_searched_for
    tree = BinaryTree.new
    tree.push("4")
    assert tree.include?("4")
  end

  def test_if_it_returns_false_for_a_value_not_in_the_head
    tree = BinaryTree.new
    tree.push("4")
    refute tree.include?("5")
  end

  def test_if_it_includes_a_value_in_an_existing_tree
    tree = BinaryTree.new
    tree.push("13")
    tree.push("15")
    tree.push("12")
    tree.push("11")
    tree.push("10")
    tree.push("14")
    assert tree.include?("12")
  end

  def test_it_includes_a_value_that_has_one_link_off_it
    tree = BinaryTree.new
    tree.push("3")
    tree.push("1")
    tree.push("5")
    tree.push("6")
    assert tree.include?("5")
  end

  def test_if_it_returns_false_for_a_value_not_in_a_tree
    tree = BinaryTree.new
    tree.push("13")
    tree.push("15")
    tree.push("12")
    tree.push("11")
    tree.push("10")
    tree.push("14")
    assert tree.include?("12")
  end

  def test_it_returns_the_head_value_as_max_when_there_is_only_one_node
    tree = BinaryTree.new
    tree.push("3")
    assert_equal "3", tree.maximum
  end

  def test_it_returns_max_value_from_a_tree_with_a_max_depth_of_two
    tree = BinaryTree.new
    tree.push("3")
    tree.push("4")
    tree.push("2")
    assert_equal "4", tree.maximum
  end

  def test_it_returns_max_value_from_a_tree_with_a_depth_greater_than_two
    tree = BinaryTree.new
    tree.push("3")
    tree.push("4")
    tree.push("2")
    tree.push("5")
    tree.push("1")
    tree.push("6")
    assert_equal "6", tree.maximum
  end

  def test_it_returns_the_head_value_as_min_when_tere_is_only_one_node
    tree = BinaryTree.new
    tree.push("3")
    assert_equal "3", tree.minimum
  end

  def test_it_returns_min_value_from_a_tree_with_a_max_depth_of_two
    tree = BinaryTree.new
    tree.push("3")
    tree.push("4")
    tree.push("2")
    assert_equal "2", tree.minimum
  end

  def test_it_returns_min_value_from_a_tree_with_a_depth_greater_than_two
    tree = BinaryTree.new
    tree.push("3")
    tree.push("4")
    tree.push("2")
    tree.push("5")
    tree.push("1")
    tree.push("6")
    assert_equal "1", tree.minimum
  end

  def test_it_returns_the_proper_depth_value_for_the_head
    tree = BinaryTree.new
    tree.push("3")
    assert_equal 0, tree.depth_of("3")
  end

  def test_it_returns_the_proper_depth_value_for_depth_one_and_is_a_leaf
    tree = BinaryTree.new
    tree.push("3")
    tree.push("5")
    tree.push("1")
    assert_equal 1, tree.depth_of("1")
  end

  def test_it_rturns_the_proper_depth_value_for_depth_two
    tree = BinaryTree.new
    tree.push("3")
    tree.push("5")
    tree.push("1")
    tree.push("6")
    assert_equal 2, tree.depth_of("6")
  end

  def test_it_returns_the_proper_depth_value_for_value_with_one_link
    tree = BinaryTree.new
    tree.push("3")
    tree.push("5")
    tree.push("1")
    tree.push("6")
    assert_equal 1, tree.depth_of("5")
  end

  def test_it_returns_false_when_input_for_depth_of_is_not_in_the_tree
    tree = BinaryTree.new
    tree.push("3")
    tree.push("5")
    tree.push("1")
    tree.push("6")
    refute tree.depth_of("4")
  end

  def test_it_returns_only_1_value_as_sorted_when_tree_has_1_node
    tree = BinaryTree.new
    tree.push("3")
    assert_equal ["3"], tree.sort
  end

  def test_it_properly_sorts_tree_with_a_depth_of_1
    tree = BinaryTree.new
    tree.push("3")
    tree.push("5")
    tree.push("1")
    assert_equal ["1", "3", "5"], tree.sort
  end

  def test_it_properly_sorts_tree_with_a_depth_of_2
    tree = BinaryTree.new
    tree.push("3")
    tree.push("5")
    tree.push("1")
    tree.push("6")
    tree.push("2")
    assert_equal ["1", "2", "3", "5", "6"], tree.sort
  end

  def test_it_properly_sorts_tree_with_depth_greater_than_2
    tree = BinaryTree.new
    tree.push("3")
    tree.push("5")
    tree.push("1")
    tree.push("6")
    tree.push("2")
    tree.push("8")
    tree.push("7")
    assert_equal ["1", "2", "3", "5", "6", "7", "8"], tree.sort
  end
end
