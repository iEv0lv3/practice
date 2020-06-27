class Pirate
  attr_reader :name, :job, :booty

  def initialize(name, job = 'Scallywag')
   @name = name
   @job = job
   @cursed = false
   @karma = 0
   @booty = 0
  end

  def cursed?
    @cursed
  end

  def commit_heinous_act
    @karma >= 2 ? @cursed = true : @karma += 1
  end

  def plunder
    @booty += 100
  end
end
