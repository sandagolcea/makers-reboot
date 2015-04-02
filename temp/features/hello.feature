Feature: testing a brand new web app
  In order to test a few pages
  As a person learning cucumber
  I want to check the content of a few pages

  Scenario: view welcome msg on entering front page
    Given a user entering the site
    When I go to the homepage
    Then I should see "hello"
