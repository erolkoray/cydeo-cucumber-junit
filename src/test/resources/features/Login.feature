@Regression @smoke
  #this is how we add comments inside a .feature file
Feature: Library app login feature
  User Story:
  As a user, I should be able to login with correct credentials to different accounts. And dashboard should be displayed.

  Accounts are: librarian, student, admin

  Background: For the scenarios in the future file, user is expected to be on the login page
    Given user is on the library login page

  @librarian @employee @wip
  Scenario: Login as librarian
    When user enters librarian username
    And user enters librarian password
    Then user should see the dashboard

  @student
  Scenario: Login as student
    When user enters student password
    And user enters student username
    Then user should see the dashboard

  @admin @employee
  Scenario: Login as admin
    When user enters admin username
    And user enters admin password
    Then user should see the dashboard


    #TAGS: Tags are used to group different scenarios together
    #
    #    - We can use tags to include or exclude some scenarios.
    #
    #    - If we put the @Tag on top of the .feature file, it will effect the whole feature file
    #    - If we put it on top of a Scenario, it will only effect that scenario
    #    - You can have as many tags as you want for a feature file or a scenario
    #
    #- How do we include or exclude different tags together?
    #- How do we use different tags together?
    #
    #- or :
    #    - "or" keyword can be used for checking condition
    #    - when we use or, we are being LESS specific, less selective
    #    - if either one of the tags are matching, the scenario or feature will be executed
    #    - or is like || in java.
    #    - if either one of the sides are matching, it will execute the scenario or feature file.
    #
    #- and
    #    - "and" keyword can be used for checking conditions as well
    #    - when we use "and" keyword, we are being MORE specific
    #    - "and" is similar to "&&" in java
    #    - the tags on the both side has to be matching for a scenario or feature to be executed
    #
    #- and not
    #    - "and not" keyword can be used for excluding conditions
    #
    #    @Regression and not @student