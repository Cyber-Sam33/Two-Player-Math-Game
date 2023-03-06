class Game
  def initialize(name)
    # player 1 and 2 initialized from the Player class
    @name = name
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

  # method starts the game onload and the turn method is called
  def start
    turn
  end

  # turn method sequentially executes methods to complete player turn and display stats
  # inbetween answers from p1&p2
  def turn
    @player_1.next_question
    current_score
    stats
    @player_2.next_question
    current_score
    stats
    puts '------ NEW TURN ------'
    turn
  end

  # checks to see if any lives left and ends game if there's a winner by calling the method
  def current_score
    if @player_1.out_of_lives
      winner(@player_2)
    elsif @player_2.out_of_lives
      winner(@player_1)
    end
  end

  def stats
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
  end
  
  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts '------ GAME OVER ------'
    puts 'Good bye!'
    # calls ruby exit method, the 0 exits with success code
    exit(0)
  end
end