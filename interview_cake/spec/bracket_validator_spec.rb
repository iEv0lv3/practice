require './bracket_validator'

describe 'Bracket Validator' do
  it 'should validate brackets' do
    code = '[[]()'

    expect(valid?(code)).to eq(false)
  end

  it 'should validate brackets' do
    code = '([)]'

    expect(valid?(code)).to eq(false)
  end

  it 'should validate brackets' do
    code = '([]{[]})[]{{}()}'

    expect(valid?(code)).to eq(true)
  end
end
