Feature: cucumber getting started
  In order to start to learn Cucumber
  As a makers alumni
  I want to say hola Cucumber

  Scenario: cucumber says all hail cucumber
    Given a nazi greeter
    When I send it the greet message
    Then I should see "all hail cucumber"
