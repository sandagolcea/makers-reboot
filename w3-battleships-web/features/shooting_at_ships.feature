Feature: Shooting at ships
  In order to win the game
  As a player with cannons
  I want to shoot at my enemy's ships

# TODO: methods for placing all ships
Scenario: Both players done placing ships
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
    And I fill in "coordinates" with "A1"
    And I press "Place ship"
    And I fill in "coordinates" with "B1"
    And I press "Place ship"
    And I fill in "coordinates" with "C1"
    And I press "Place ship"
    And I fill in "coordinates" with "D1"
    And I press "Place ship"
    Then I should see "Your board"
