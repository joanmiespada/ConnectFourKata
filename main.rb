#!/usr/bin/env ruby

require_relative 'connectfour'
require_relative 'board'

game = ConnectFour.new
game.setPlayerOne('player1')
game.setPlayerTwo('player2')
# print game.to_s()
# row =
game.add_token(ConnectFour::User::PLAYER1, 1)
game.add_token(ConnectFour::User::PLAYER2, 2)
game.add_token(ConnectFour::User::PLAYER1, 2)
game.add_token(ConnectFour::User::PLAYER2, 3)
game.add_token(ConnectFour::User::PLAYER1, 3)
game.add_token(ConnectFour::User::PLAYER2, 4)
game.add_token(ConnectFour::User::PLAYER1, 3)
game.add_token(ConnectFour::User::PLAYER2, 4)
game.add_token(ConnectFour::User::PLAYER1, 5)
game.add_token(ConnectFour::User::PLAYER2, 4)
game.add_token(ConnectFour::User::PLAYER1, 4)
res = game.IsAlreadyWinner(ConnectFour::User::PLAYER1)

# print row
# res = game.GetAllBoard()

# board = Board.new
# board.add_token(1,2)
# res= board.get_board()
print res
