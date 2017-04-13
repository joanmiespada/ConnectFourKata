#features/tests.features
Feature: Play a game.
As a player
I want to play with tokens
So that I need a Board filled with Tokens 

Scenario: Let empty Board, player drop a Token.
Given I have created Board empty ready to play
When The user1 drops a Token in column "1"
When The user2 drops a Token in column "2"
When The user1 drops a Token in column "1"
Then I will see the board with correct tokens