def cellCompete(states, days)
  previous_day = states
  current_day = []
  days_count = days

  until days_count == 0
    current_day.clear

    previous_day.each_index do |cell|
      if cell == 0
        right = previous_day[cell + 1]
        left = 0
      elsif cell == 7
        right = 0
        left = previous_day[cell - 1]
      else
        right = previous_day[cell + 1]
        left = previous_day[cell - 1]
      end

      current_day.push(cell_state_swap(right, left))
    end

    days_count -= 1
    previous_day = Array.new(current_day)
  end

  current_day
end

def cell_state_swap(right, left)
  new_cell = if right == left
               0
             else
               1
             end

  new_cell
end
