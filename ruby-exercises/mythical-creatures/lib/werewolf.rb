class Werewolf
  attr_reader :name, :location, :victims

  def initialize(name, location = 'London')
    @name = name
    @location = location
    @human_form = true
    @hungry = false
    @victims = []
  end

  def human?
    @human_form
  end

  def change!
    @human_form == true ? @human_form = false : @human_form = true
    @hungry = true if @human_form == false
  end

  def wolf?
    @human_form == false
  end

  def hungry?
    @hungry
  end

  def consume(victim)
    @human_form == true ? 'Must be a Werewolf to consume victims' : @victims.push(victim)
    return unless @victims.include?(victim)

    @hungry = false
    victim.status = :dead
  end
end
