Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page

    Scenario: Sign up
        Given I am on Appimation home page
        When I click sign up
        Then I see signup window
        When I fill signup information
        And I close signup window
        Then Sign up window is closed


    Scenario: Log in user
        Given I am on Appimation home page
        When I click log in
        And I fill login information
        And I confirm login
        Then I see error incorrect login
