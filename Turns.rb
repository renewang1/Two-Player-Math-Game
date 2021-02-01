class Turns
  attr_reader :turn

  def initialize
    @turn = 1
  end

  def change_turn
    if @turn == 1
      @turn = 2
    elsif @turn == 2
      @turn = 1
    end
  end
end