class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @mood = false
    @energy = 0
    @standing = true
  end

  def shoot
    return 'NO!' if @standing == false

    @energy += 1
    @mood = true if @energy >= 3
    @mood == false ? 'Twang!!!' : 'NO!'
  end

  def run
    return 'NO!' if @standing == false

    @energy += 1
    @mood = true if @energy >= 3
    @mood == false ? 'Clop clop clop clop!!!' : 'NO!'
  end

  def cranky?
    @mood
  end

  def sleep
    return 'NO!' if @standing == true

    @mood = false
    @energy = 0
  end

  def lay_down
    @standing = false
  end

  def standing?
    @standing
  end

  def laying?
    !@standing
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    return '> Centaur becomes sick'if rested?

    @standing == true ? @energy = 0 : 'NO!'
  end

  def rested?
    @energy.zero? ? true : false
  end
end
