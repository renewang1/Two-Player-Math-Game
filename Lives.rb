class Lives
  attr_reader :player1_lives, :player2_lives

  def initialize
    @player1_lives = 3
    @player2_lives = 3
  end

  def reduce_life(player)
    if player == 1
      @player1_lives -= 1
    elsif player == 2
      @player2_lives -= 1
    end
  end
end