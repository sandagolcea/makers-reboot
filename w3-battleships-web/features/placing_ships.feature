Feature: Starting the game
  In order to get ready for the game
  As a player with a plan
  I want to place my ships

Scenario: Placing a ship on the board
    Given I am on the newgame page
    And I fill in "coordinates" with "A1"
    And I select "cruiser" from "type"
    When I press "Place ship"
    Then I should not see "cruiser"

  Scenario: Placing a cruiser at a wrong location
    Given I am on the newgame page
    And I fill in "coordinates" with "A99"
    And I select "cruiser" from "type"
    When I press "Place ship"
    Then I should see "cruiser"

Scenario: Player done placing ships
    Given I am on the homepage
    And I fill in "player1" with "Sanda"
    And I fill in "player2" with "Jair"
    And I press "New Game"
    And I fill in "coordinates" with "A1"
    And I press "Place ship"
    And I fill in "coordinates" with "B1"
    And I press "Place ship"
    And I fill in "coordinates" with "C1"
    And I press "Place ship"
    And I fill in "coordinates" with "D1"
    And I press "Place ship"
    Then I should see "Welcome to the game Jair!"