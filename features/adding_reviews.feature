Feature: Adding reviews 

  Scenario: Adding reviews 
    Given I am on the homepage
    And I am signed in
    And A restaurant exists
    When I fill in "Comment", with "Amazing"
    And I select '4'
    And I press "Create Review"
    Then I should see "Amazing"

  Scenario: Email sent to owner when a review is written
    Given I am signed in 
    And I am on the page for Devesh
    When I fill in "Comment", with: "Check it"
    And I select '4'
    And I press "Create Review"
    Then an email should be sent to "devesh@hotmail.com"
    And the email should contain "New review posted"