#features/tests.features
Feature: Create a Board to play for 2 players.
As a player
I want to play
So that I need a new Board ready

Scenario: Create Board for new players.
Given I have created Board into the program
When I add userOne with name "user11"
When I add userTwo with name "user22"
Then I should see new board with both users ready