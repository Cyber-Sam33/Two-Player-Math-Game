class Player
  # getter and setters for class and player initialized
  attr_reader :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def out_of_lives
    @lives == 0
  end

  def next_question
    # next_question is a new instance of Question
    next_question = Question.new
    next_question.ask_question(name)
    print '> '
    # takes user input for the answer to the addidtion
    @userchoice = $stdin.gets.chomp
    # converts user input to integer and checks if they had the correct score
    if next_question.check_answer?(@userchoice.to_i)
      puts 'YES! You are correct.'
    else
      puts 'Seriously? No!'
      # 1 life removed
      lose_life
    end
  end
end