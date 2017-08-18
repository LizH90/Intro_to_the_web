class Player

  attr_reader :name
  attr_accessor :hp

  DEFAULT_HP = 100

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attacked
    @hp -= 10
  end

  def dummy
    "#{@name} has been attacked"
  end

end
