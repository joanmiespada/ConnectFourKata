#!/usr/bin/env ruby
# Connect Four main class ClassName

require_relative 'board'

class ConnectFour
  module User
    PLAYER1 = 1
    PLAYER2 = 2
  end

  def initialize
    @player1Name = ''
    @player2Name = ''
    @board = Board.new
  end

  def setPlayerOne(player1)
    @player1Name = player1
  end

  def setPlayerTwo(player2)
    @player2Name = player2
  end

  def to_s # override toString method of Object class
    "Game with #{@player1Name} and #{@player2Name}"
  end

  def add_token(user_color, column)
    @board.add_token(user_color, column)
  end

  def GetAllBoard
    @board.board
  end

  def IsAlreadyWinner(playerId)
    # return true
    @board.check_if_there_is_winner(playerId)
  end
end
