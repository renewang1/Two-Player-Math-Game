require_relative "Player"
require_relative "Question"
require_relative "Turns"


class Math_Game

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @Turns = Turns.new
    @Question = Question.new
    first_question = @Question.new_question(1)
    handle_first_question(first_question)
  end

  def handle_first_question(question)
    if !question
      @player1.reduce_life
    end
    @Turns.change_turn
    puts "P1: #{@player1.player_lives}/3 vs P2: #{@player2.player_lives}/3"
    next_question = @Question.new_question(@Turns.turn)
    handle_questions(next_question)
  end

  def handle_questions(question)
    if !question && @Turns.turn == 1
      @player1.reduce_life
      @Turns.change_turn
    elsif !question && @Turns.turn == 2
      @player2.reduce_life
      @Turns.change_turn
    end
    if @player1.player_lives > 0 && @player2.player_lives > 0
      puts "P1: #{@player1.player_lives}/3 vs P2: #{@player2.player_lives}/3"
      next_question = @Question.new_question(@Turns.turn)
      handle_questions(next_question)
    else 
      if @player1.player_lives == 0
        puts "Player 2 wins with a score of #{@player2.player_lives}"
      elsif @player2.player_lives == 0
        puts "Player 1 wins with a score of #{@player1.player_lives}"
      end
      puts "----- GAME OVER -----"
      return
    end
  end
  
end

Math_Game.new