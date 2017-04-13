#features/tests.features
Feature: Winner game.
As a player
I want to win the match
So that I need a minimum of 4 tokens aligned horizontally, vertically or diagonal 

Scenario: User1 win the match with vertical align tokens.
Given I have created Board empty ready to play
When The user1 drops a Token in column "1"
When The user2 drops a Token in column "2"
When The user1 drops a Token in column "1"
When The user2 drops a Token in column "2"
When The user1 drops a Token in column "1"
When The user2 drops a Token in column "2"
When The user1 drops a Token in column "1"
Then the user1 wins the match