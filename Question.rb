class Question
  def initialize
    @number1 = nil
    @number2 = nil
  end

  def new_question(turn)
    @number1 = rand(10)
    @number2 = rand(10)
    if turn == 1
      puts "Player1: What does #{@number1} plus #{@number2} equal?"
    else 
      puts "Player2: What does #{@number1} plus #{@number2} equal?"
    end
  end

  def check_answer(answer)
    if answer == @number1 + @number2
  end
end