#features/step_definitions/tests.rb
require_relative "../../connectfour"

_board = nil
_tokens = Array.new

Given (/^I have created Board empty ready to play$/) do
    _board = ConnectFour.new
    _board.setPlayerOne("player1")
    _board.setPlayerTwo("player2")
end 

When (/^The user1 drops a Token in column "([^"]*)"$/) do |column| 
    row =_board.AddToken(ConnectFour::User::PLAYER1, column.to_i)
    _tokens.push( ['player1', row, column.to_i ]  )
end

When (/^The user2 drops a Token in column "([^"]*)"$/) do |column| 
    row=_board.AddToken(ConnectFour::User::PLAYER2, column.to_i)
    _tokens.push( ['player2',row,column.to_i ]  )
end  

Then (/^I will see the board with correct tokens$/) do 
    res= _board.GetAllBoard
    #print res
    _tokens.map{ |item| 
        expect(res[ item[1] ][ item[2] ]).not_to eq(0)
        #print item
    }

    
end

Then (/^the user1 wins the match$/) do 
    res= _board.IsAlreadyWinner(ConnectFour::User::PLAYER1)

    expect(res).to eq(true)
    #print res
    #_tokens.map{ |item| 
    #    expect(res[ item[1] ][ item[2] ]).not_to eq(0)
        #print item
    #}
    
    
end