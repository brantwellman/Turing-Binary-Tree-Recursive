require 'minitest'
require 'minitest/autorun'
require './lib/binary_tree'
class BinaryTreeTest < Minitest::Test

  def test_that_it_exists
    tree = BinaryTree.new
    assert tree
  end

  def test_it_starts_with_a_count_of_zero
    tree = BinaryTree.new
    # assert_equal 0, tree.count
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
end
