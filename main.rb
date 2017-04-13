#!/usr/bin/env ruby 

require_relative "connectfour"
require_relative "board"


game = ConnectFour.new
game.setPlayerOne("player1")
game.setPlayerTwo("player2")
print game.to_s()
row = game.AddToken(ConnectFour::User::PLAYER1 , 0)
print row
res = game.GetAllBoard()

#board = Board.new
#board.AddToken(1,2)
#res= board.GetBoard()
print res