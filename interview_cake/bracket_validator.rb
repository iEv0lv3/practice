require 'pry'
require 'rspec'

def valid?(code)
  max_index = code.length - 1
  current_index = 0
  bracket_closers = { ')' => '(', '}' => '{', ']' => '[' }
  stack = []

  code.each_char do |bracket|
    return false if current_index == max_index && stack.size >= 2

    return true if current_index == max_index && stack.last == bracket_closers[bracket]

    if stack.last == bracket_closers[bracket] && stack.empty? == false
      stack.pop
      current_index += 1
    elsif bracket_closers[bracket] == nil
      stack.push(bracket)
      current_index += 1
    elsif stack.last != bracket_closers[bracket]
      return false
    end
  end
end
