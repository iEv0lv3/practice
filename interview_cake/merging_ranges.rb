def find_time(meetings)
  sorted = meetings.sort
  iteration = 0

  sorted.each do |meeting|
    if meeting[1] >= sorted[1 + iteration][0] && meeting[1] <= sorted[1 + iteration][1]
      sorted[1 + iteration] = [meeting[0], sorted[1 + iteration][1]]
      sorted.delete_at(iteration)
    elsif meeting[0] <= sorted[1 + iteration][0] && meeting[1] >= sorted[1 + iteration][1]
      sorted.delete_at(1 + iteration)
    end
    iteration += 1
  end

  sorted
end
