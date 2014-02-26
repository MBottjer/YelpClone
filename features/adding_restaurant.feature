Feature: Adding restaurants 

  Scenario: Adding a restaurant 
    Given I am on the homepage
    And I am signed in
    When I follow "+ Add Restaurants"
    And I fill in "Name" with "Thai-scape"
    And I fill out "Owner's email" with "foo@bar.com"
    And I fill in "Description" with "Beautiful meal, shame about the company"
    And I press "Add Restaurant"
    Then I should see "Thai-scape"

  Scenario: Clicking on a restaurants name 
    Given I am signed in
    And A restaurant exists
    And I am on the homepage
    When I click "Devesh"
    Then I should see "Devesh"