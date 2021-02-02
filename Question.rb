class Question
  def initialize(turn)
    @number1 = nil
    @number2 = nil
    @turn = turn
  end

  def new_question
    @number1 = rand(10)
    @number2 = rand(10)
    if @turn == 1
      puts "Player1: What does #{@number1} plus #{@number2} equal?"
    elsif @turn == 2
      puts "Player2: What does #{@number1} plus #{@number2} equal?"
    end
    answer = gets.chomp.to_i
    check_answer(answer)
  end

  def check_answer(answer)
    if answer == @number1 + @number2
      puts "YES! You are correct."
      # update_turn
    else
      puts "Seriously? No!"
      # self.lower_score(turn)
    end
  end
end