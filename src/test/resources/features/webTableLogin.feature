Feature: User should be able to login using correct credentials

  @wip
  Scenario: Positive login scenario
    Given user is on the login page of web table app
    When user enters username "test"
    And user enters password "tester"
    And user clicks to login button
    Then user should see url contains orders


