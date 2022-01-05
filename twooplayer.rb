
require './player.rb'

class Twooplayer

  attr_accessor :player1, :player2

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end

  def play

    is_player1 = true
    player = player1

    while player1.lives > 0 && player2.lives > 0
      puts "--- NEW TURN ---"
      if is_player1
        player = player1
        is_player1 = false
      else
        player = player2
        is_player1 = true
      end

      num1 = rand(1..20)
      num2 = rand(1..20)
      sum = num1 + num2

      puts "#{player.name}: What does #{num1} plus #{num2} equal?"
      ans = gets.chomp.to_i

      if ans == sum
        puts "#{player.name}: YES! You are correct."
      else
        puts "#{player.name}: Seriously? No!"
        player.reduce_life
      end

      puts "P1: #{@player1.score} vs P2: #{@player2.score}"
    end

    winner = player2
    if player1.lives > player2.lives
      winner = player1
    end
    puts "#{winner.name} wins with a score of #{winner.score}"
    puts "---GAME OVER---"
    puts "Good bye!"
  end
end

# game = Twooplayer.new
# game.play