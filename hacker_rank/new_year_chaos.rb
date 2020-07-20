def minimum_bribes(line)
  # find number of bribes required to get line configuration
  # each person in line has only 2 bribes to use

  line.each_index do |index|
    if line[0] == line[index]
      # (check that line[0] value - line[index + 2] value).abs <= 2
    elsif line[-1] == line[index]
      # (check that line[-1] value - line[index - 2] value).abs <= 2
    elsif line[1] == line[index]
      # (check that line[index] value - line[index + 2] value).abs <= 2
      # (check that line[index] value - line[index - 1] value).abs <= 1
    elsif line[-2] == line[index]
      # (check that line[index] value - line[index + 1] value).abs <= 1
      # (check that line[index] value - line[index - 2] value).abs <= 2
    end

    # Try a control flow that only checks list[index + 2] <= index
    line.each_index do |index|
      # (check that line[0] value - line[index + 2] value).abs <= 2
      if (line[index] - line[index + 2]).abs <= 2
        next
      else
        'Too Complex'
      end

    end
  end
end
