require_relative 'Player'
class Game 

player1 = Player.new('P1', 3)
player2 = Player.new('P2', 3)

puts 'PLAYERS'
puts player1
puts player2

turns = 0
while player1.score > 0 && player2.score >0
puts '--- NEW TURN ---'
turns += 1
rand1 = rand(20)+1
rand2 = rand(20)+1
answer = rand1 + rand2
if turns.odd?
puts "Player 1: What does #{rand1} + #{rand2} equal?"
else 
puts "Player 2: What does #{rand1} + #{rand2} equal?"
end
user_answer = gets.chomp

  if answer == user_answer.to_i 
     puts "NICE ONE!"
  else 
    if turns.odd?
    player1.score -= 1
    puts "WRONG! Player 1 score #{player1.score}/3"
    else 
    player2.score -=1
    puts "WRONG! Player 2 score #{player2.score}/3"

    end
    if player2.score == 0
        puts "GAME OVER"
        puts "Player 1 wins with a score of #{player1.score}"
    elsif player1.score == 0
        puts "GAME OVER"
        puts "Player 2 wins with a score of #{player2.score}"
    end
  end

end
end

