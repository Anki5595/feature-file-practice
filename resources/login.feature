Feature:  Login functionality
  As a user, I want to test login page

  Scenario: Verify user navigate to login page successfully
    Given I ma on home page
    When I click on login link
    Then I should navigate to login page successfully

  Scenario Outline: User should login with valid credentials successfully
    When              User enter "<xyz@gmail.com>" in username field
    And              User enter "<Abcd1234>" in password field
    And              User click on 'login' button
    And              User press 'enter key' form key board
    Then              User logged in successfully
    And              User can see "<message>"

    Examples:
      | username      | password | conditions                     | message            |
      | xyz@gmail.com | Abcd1234 | click on 'login' button        | Login successfully |
      | xyz@gmail.com | Abcd1234 | press 'Enter key' on key board | Login successfully |