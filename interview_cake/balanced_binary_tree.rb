require 'pry'
require 'rspec'

class BinaryTreeNode

  attr_accessor :value
  attr_reader :left, :right

  def initialize(value)
    @value = value
    @left  = nil
    @right = nil
  end

  def insert_left(value)
    @left = BinaryTreeNode.new(value)
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
  end
end

class BinaryTree

  attr_reader :root

  def initialize(root = BinaryTreeNode.new(50))
    @root = root
  end

  def insert(value, node = @root)
    if value > node.value && node.right == nil
      node.insert_right(value)
    elsif value > node.value && node.right != nil
      insert(value, node.right)
    elsif value < node.value && node.left == nil
      node.insert_left(value)
    elsif value < node.value && node.left != nil
      insert(value, node.left)
    end
  end

  def balanced?(tree_root = @root)
    return true unless tree_root

    depths = []

    nodes = []
    nodes << [tree_root, 0]

    until nodes.empty?
      node, depth = nodes.pop

      if !node.left && !node.right
        unless depths.include?(depth)
          depths.push(depth)

          if depths.length > 2 || depths.length == 2 && (depths[0] - depths[1]).abs > 1
            return false
          end
        end
      else
        nodes << [node.left, depth + 1] if node.left
        nodes << [node.right, depth + 1] if node.right
      end
    end

    true
  end
end
