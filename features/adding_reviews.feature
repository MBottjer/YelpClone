Feature: Adding reviews 

  Scenario: Adding reviews 
    Given I am on the homepage
    And A restaurant exists
    And I am on the homepage
    When I click "Devesh"
    And I fill in "Comment", with "Amazing"
    And I select '4'
    And I press "Create Review"
    Then I should see "Amazing"