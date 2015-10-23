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
    assert_equal 0, tree.count
  end

  def test_it_pushes_data_onto_an_empty_tree
    tree = BinaryTree.new
    tree.push("13")
    assert tree.head.data
    assert_equal "13", tree.head.data
  end

  # def test_it_pushes_data_onto_an_empty_tree
  #   skip
  #   tree = BinaryTree.new
  #   tree.push("13")
  #   assert_equal 1, tree.count
  # end

  def test_it_pushes_data_onto_an_existing_tree
    # skip
    tree = BinaryTree.new
    tree.push("13")
    tree.push("15")
    tree.push("12")
    assert_equal 3, tree.count
  end
end
