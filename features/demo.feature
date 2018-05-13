Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I open Try now
        Then I close Try now

    Scenario: I can send contact us message
        Given I am on Appimation home page
        When I enter "lalalalla" and "namemname" in name in contact us

    Scenario: I can fill in and close sign up form
        Given I am on Appimation home page
        When I click sign up
        And I see signup window
        And I fill signup information
        And I close signup window
        Then Sign up window is closed

    Scenario: I can see error when login with invalid data
        Given I am on Appimation home page
        When I click log in
        And I fill login information
        And I confirm login
        Then I see error incorrect login