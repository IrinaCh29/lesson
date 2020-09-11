Feature: Login To Jira

  @Regression
  Scenario: Login to Jira
    Given I navigate to Jira Login Page
    And I enter user name - "webinar5"
    And I enter password - "webinar5"
    And I click on the login button
    Then I am on the Home Page

  @Regression @wip
  Scenario Outline: Failed Login to Jira
    Given I navigate to Jira Login Page
    And I enter user name - "<Name>"
    And I enter password - "<Password>"
    And I click on the login button
    Then I see "<ErrorMessage>"

    Examples:
      | Name     | Password | ErrorMessage                                                        |
      | webinar  | webinar5 | Sorry, your username and password are incorrect - please try again. |
      | webinar  | webinar  | Sorry, your username and password are incorrect - please try again. |
      | webinar5 | webinar  | Sorry, your username and password are incorrect - please try again. |