class Question
  # creates a random number from 1-20 and initializes instance of Question
  def initialize
    @rand_num1 = rand(1..20)
    @rand_num2 = rand(1..20)
    @sum = @rand_num1 + @rand_num2
  end

  def ask_question(name)
    puts "#{name}: What does #{@rand_num1} plus #{@rand_num2} equal?"
  end
  
  def check_answer?(input)
    @sum == input
  end
end