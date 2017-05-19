# features/step_definitions/tests.rb
require_relative '../../connectfour'

_board = nil
_player1 = nil
_player2 = nil

Given (/^I have created Board into the program$/) do
  _board = ConnectFour.new
end

When (/^I add userOne with name "([^"]*)"$/) do |player1|
  _board.setPlayerOne(player1)
  _player1 = player1
end

When (/^I add userTwo with name "([^"]*)"$/) do |player2|
  _board.setPlayerTwo(player2)
  _player2 = player2
end

Then (/^I should see new board with both users ready$/) do
  # print _board.to_s()
  expect(_board.to_s).to eq("Game with #{_player1} and #{_player2}")
end
