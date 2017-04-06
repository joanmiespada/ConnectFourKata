#!/usr/bin/env ruby 

require_relative "connectfour"

game = ConnectFour.new
game.setPlayerOne("player1")
game.setPlayerTwo("player2")
print game.to_s()
#game.AddToken("blue","1")
#game.GetAllBoard()