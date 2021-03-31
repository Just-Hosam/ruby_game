require './player.rb'
require './game.rb'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

Game.new(player1, player2)