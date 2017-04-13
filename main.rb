#!/usr/bin/env ruby 

require_relative "connectfour"
require_relative "board"


game = ConnectFour.new
game.setPlayerOne("player1")
game.setPlayerTwo("player2")
#print game.to_s()
#row = 
game.AddToken(ConnectFour::User::PLAYER1 , 1)
game.AddToken(ConnectFour::User::PLAYER2 , 2)
game.AddToken(ConnectFour::User::PLAYER1 , 2)
game.AddToken(ConnectFour::User::PLAYER2 , 3)
game.AddToken(ConnectFour::User::PLAYER1 , 3)
game.AddToken(ConnectFour::User::PLAYER2 , 4)
game.AddToken(ConnectFour::User::PLAYER1 , 3)
game.AddToken(ConnectFour::User::PLAYER2 , 4)
game.AddToken(ConnectFour::User::PLAYER1 , 5)
game.AddToken(ConnectFour::User::PLAYER2 , 4)
game.AddToken(ConnectFour::User::PLAYER1 , 4)
res=game.IsAlreadyWinner(ConnectFour::User::PLAYER1)

#print row
#res = game.GetAllBoard()

#board = Board.new
#board.AddToken(1,2)
#res= board.GetBoard()
print res