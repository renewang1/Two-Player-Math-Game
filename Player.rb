class Player
  attr_reader :player_lives

  def initialize
    @player_lives = 3
  end

  def reduce_life
    @player_lives -= 1
  end
end