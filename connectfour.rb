#!/usr/bin/env ruby 
#Connect Four main class ClassName

class ConnectFour

    def initialize(player1,player2) 
        @player1Name= player1
        @player2Name= player2
    end

    def to_s #override toString method of Object class
        return "Game with #{@player1Name} and #{@player2Name}"
    end

    def AddToken(user_color, column)
        print "UserColor: #{user_color} in column: #{column}"    
    end

    def GetAllBoard()
        return []
    end

end

game = ConnectFour.new("player1","player2")
print game.to_s()
game.AddToken("blue","1")
game.GetAllBoard()