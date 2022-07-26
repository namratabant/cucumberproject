@F_Login
Feature: This feature would be used to design the Login page of application

  Background: open the application
    Given I have opened the application in browser


  Scenario: Validate the successful login
    When I click on the Login link
    And I enter username
    And I enter password
    And I click on the login Button
    Then I should be Landed on the home page

@Regression
  Scenario: Validate the successful login using test data
    When I click on the Login link
    And I enter username "abc@xyz.com"
    And I enter password "Pqr@1234"
    And I click on the login Button
    Then I should be Landed on the home page


@Regression @Rapid
  Scenario Outline: Validate the successful login using multipetest data
    When I click on the Login link
    And I enter username "<UserName>"
    And I enter password "<Password>"
    And I click on the login Button
    Then I should be Landed on the home page

    Examples: 
      | UserName     | Password |
      | abc@xyz.com  | pqr@1234 |
      | nick@abc.com | pqr@1234 |
@Sanity
    Scenario: Validate the Negetive login using test data
    When I click on the Login link
    And I enter username "namratabant123@gmail.com"
    And I enter password "Pqr@1234"
    And I click on the login Button
    Then I should get the error message  "The email or password you have entered is invalid."