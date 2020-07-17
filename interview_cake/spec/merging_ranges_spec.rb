require 'pry'
require './merging_ranges'

describe 'Merging Ranges' do
  it 'can sort a nested array of meetings' do
    meetings = [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]

    expect(find_time(meetings)).to eq([[0, 1], [3, 8], [9, 12]])
  end

  it 'can handle a meeting that is completely within another meeting time block' do
    meetings = [[1, 5], [2, 3]]

    expect(find_time(meetings)).to eq([[1, 5]])
  end

  it 'can handle consecutive meetings that end and start at the same time' do
    meetings = [[1, 2], [2, 3]]

    expect(find_time(meetings)).to eq([[1, 3]])
  end

  it 'can handle merging all meetings into one array' do
    meetings = [[1, 10], [2, 6], [3, 5], [7, 9]]

    expect(find_time(meetings)).to eq([[1, 10]])
  end
end
