require 'pry'
require './amazon_demo'

describe 'When I do something' do
  it 'it has this outcome' do
    states = [1, 0, 0, 0, 0, 1, 0, 0]
    days = 1
    expected = [0, 1, 0, 0, 1, 0, 1, 0]

    expect(cellCompete(states, days)).to eq(expected)
  end

  it 'works' do
    states = [1, 1, 1, 0, 1, 1, 1, 1]
    days = 2
    expected = [0, 0, 0, 0, 0, 1, 1, 0]

    expect(cellCompete(states, days)).to eq(expected)
  end
end
