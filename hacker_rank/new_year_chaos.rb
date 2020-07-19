def minimum_bribes(line)
  # find number of bribes required to get line configuration
  # each person in line has only 2 bribes to use

  line.each_index do |index|
    if line[0] == line[index]
      # (check that line[0] value - line[index + 2] value).abs <= 2
    elsif line[-1] == line[index]
      # (check that line[-1] value - line[index - 2] value).abs <= 2
    else
      # (check that line[index] value - line[index + 2] value).abs <= 2
      # (check that line[index] value - line[index - 2] value).abs <= 2
    end
  end
end
