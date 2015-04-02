Feature: Starting the game
  In order to play battleships
  As a player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I press "New Game"
    Then I should see "Welcome to the game"

  Scenario: Registering two players
    Given I am on the homepage
    And I fill in "player1" with "Sanda"
    And I fill in "player2" with "Jair"
    When I press "New Game"
    Then I should see "Welcome to the game Sanda!"
