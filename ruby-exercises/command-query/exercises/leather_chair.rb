class LeatherChair
  def initialize
    @faded = false
  end

  def expose_to_sunlight
    @faded = true
  end

  def faded?
    @faded == true ? 'Exposed chairs are faded.' : 'New chairs are NOT faded.'
  end
end
