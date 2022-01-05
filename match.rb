class Match
  attr_accessor :current_player, :player_one, :player_two
  def initialize
    @player_one = Player.new
    @player_two = Player.new
    @current_player = 1
  end

  def print_scores
    puts "P1: #{@player_one.lives}/3 vs P2: #{@player_two.lives}/3"
  end

  def winner?
    if @player_one.lives == 0 || @player_two.lives == 0
      return true
    else
      return false
    end
  end
  
  def switch_player
    if @current_player == 1
      @current_player = 2
    else
      @current_player = 1
    end
  end

end

# question = Question.new
# puts "player one"
# puts "what is #{question.print} "
# answer = // get answer from user
# if question.answer == answer 
# // move on otherwise subtrack a life