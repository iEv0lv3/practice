require './balanced_binary_tree'

describe 'Balanced Binary Tree' do
  before :each do
    @tree = BinaryTree.new
    20.times do
      @tree.insert(rand(1..100))
    end
  end

  it 'balances a binary tree' do
    require 'pry'; binding.pry
  end
end
