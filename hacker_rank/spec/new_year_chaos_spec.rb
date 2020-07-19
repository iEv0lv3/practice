require './new_year_chaos'

describe 'Minimum Bribes' do

  it 'finds 1 bribe' do
    line = [1, 2, 3, 5, 4, 6, 7, 8]

    expect(minimum_bribes(line)).to eq(1)
  end

  xit 'finds 2 bribes' do
    line = [1, 3, 2, 4, 5, 7, 6, 8]

    expect(minimum_bribes(line)).to eq(2)
  end

  xit 'finds 4 bribes' do
    line = [3, 1, 2, 4, 5, 6, 8, 7]

    expect(minimum_bribes(line)).to eq(4)
  end

  xit 'finds 8 bribes' do
    line = [1, 2, 3, 4, 5, 6, 7, 8]

    expect(minimum_bribes(line)).to eq(8)
  end

  xit 'finds 8 more complex bribes' do
    line = [1, 2, 3, 4, 5, 6, 7, 8]

    expect(minimum_bribes(line)).to eq(8)
  end

  xit 'the configuration cannot exist' do
    line = [1, 2, 3, 4, 5, 6, 7, 8]

    expect(minimum_bribes(line)).to eq('Too Complex')
  end

end
