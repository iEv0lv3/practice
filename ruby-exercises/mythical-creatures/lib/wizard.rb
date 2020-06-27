class Wizard
  attr_reader :name, :beard

  def initialize(name, beard = { bearded: true })
    @name = name
    @beard = beard[:bearded]
    @rested = true
    @stamina = 0
  end

  def bearded?
    @beard
  end

  def incantation(phrase)
    "sudo #{phrase}"
  end

  def rested?
    @rested
  end

  def cast
    @stamina >= 2 ? @rested = false : @stamina += 1
    'MAGIC MISSLE!'
  end
end
