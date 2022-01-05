class Player
  attr_reader :lives
  def initialize
    @lives = 3
  end
  def subtract_life
    @lives -= 1;
  end
end