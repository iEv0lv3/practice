class Ogre
  attr_reader :name, :home, :swings

  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
  end

  def encounter(human)
    human.encounter_counter += 1
    swing_at(human) if human.notices_ogre?
  end

  def swing_at(human)
    @swings += 1
    hit(human) if @swings % 2 == 0
  end

  def hit(human)
    human.knocked_out = true
  end

  def apologize(human)
    human.knocked_out? == true ? human.knocked_out = false : "I'll eat you human."
  end
end

class Human
  attr_reader :name
  attr_accessor :encounter_counter, :knocked_out

  def initialize
    @name = 'Jane'
    @encounter_counter = 0
    @knocked_out = false
  end

  def notices_ogre?
    @encounter_counter % 3 == 0 ? true : false
  end

  def knocked_out?
    @knocked_out
  end
end
