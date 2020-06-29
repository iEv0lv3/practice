class Baby
  def initialize
    @tired = true
  end

  def nap
    @tired = false
  end

  def tired?
    @tired == true ? 'The baby is tired.' : 'Naps help combat drowsiness.'
  end
end
