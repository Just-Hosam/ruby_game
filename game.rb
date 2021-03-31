def start(player1, player2)
  player_turn = 0

  while player1.alive? && player2.alive? do
    puts "------- NEW TURN -------"

    player_turn % 2 == 0 ? run_question(player1) : run_question(player2)
  
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
    player_turn += 1
  end

  game_end(player1.alive? ? player1 : player2)
end

def game_end(player)
  puts "------- GAME OVER -------"
  puts "#{player.name} wins with a score of #{player.lives}/3"
  puts "GoodBye!"
end