def find_time(meetings)
  sorted = meetings.sort
  iteration = 0

  sorted.each do |meeting|
    require 'pry'; binding.pry
    if sorted[0][0] <= meeting[0] && sorted[0][1] >= meeting[1]
      require 'pry'; binding.pry
      # sorted[0] = meeting
      sorted.delete_at(1)
    elsif meeting[1] >= sorted[1 + iteration][0] && meeting[1] <= sorted[1 + iteration][1]
      require 'pry'; binding.pry
      sorted[1 + iteration] = [meeting[0], sorted[1 + iteration][1]]
      sorted.delete_at(iteration)
      iteration += 1
    end
    require 'pry'; binding.pry
  end
  require 'pry'; binding.pry

  # sorted.size.times do
  #   meeting = sorted[0 + iteration]
  #   if sorted[0][0] <= meeting[0] && sorted[0][1] >= meeting[1]
  #     deleted += 1
  #     iteration += 1
  #     sorted.delete_at(1)
  #   elsif meeting[1] >= sorted[1 + iteration][0] && meeting[1] <= sorted[1 + iteration][1]
  #     sorted[1 + iteration] = [meeting[0], sorted[1 + iteration][1]]
  #     sorted.delete_at(iteration)
  #     iteration += 1
  #   end
  # end

  sorted
end
