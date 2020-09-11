  @Regression
  Feature: Create Issue

  Background: Login to JIRA
    Given I navigate to Jira Login Page
    And I enter user name - "webinar5"
    And I enter password - "webinar5"
    And I click on the login button
    Then I am on the Home Page

  Scenario: Create Issue
    And I click Create button
    Then I am in the Create Issue form
    And I fill Project field - "Webinar (WEBINAR)"
    And I fill Issue Type field - "Task"
    And I fill Summary field - "Summary"
    And I fill Reporter field - "webinar5"
    When I click Submit button
    Then Pop up with number of created issue is shown