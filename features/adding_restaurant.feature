Feature: Adding restaurants 

  Scenario: Adding a restaurant 
    Given I am on the homepage 
    When I follow "Add Restaurants"
    And I fill in "Name" with "Thai-scape"
    And I fill in "Description" with "Beautiful meal, shame about the company"
    And I press "Save Restaurant"
    Then I should see "Thai-scape"

  Scenario: Clickling on a restaurants name 
    Given A restaurant exists
    And I am on the homepage 
    When I click "Devesh"
    Then I should see "Devesh"