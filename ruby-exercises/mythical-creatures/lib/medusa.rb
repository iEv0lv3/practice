class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    if @statues.count < 3
      @statues.push(person)
    else
      @statues.shift
      @statues.push(person)
    end
    person.stoned = true
  end
end

class Person
  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end
end
