Feature: Merge Articles
  As a blog administrator
  In order to organize the blog entries
  I want to be able to merge blog articles

  Background:
    Given the blog is set up
    And there are at least two blog entries

  Scenario: Successfully merge articles
    Given I am logged in as an admin
    And I am on an edit article page
    Then I should see "Merge Articles"
    When I fill in "merge_with" with "3"
    And I press "Merge"
    Then I should be on an edit article page
    And I should see "Successfully"
    When I go to the home page
    Then I should see "Hello World"
    And I should not see "Test 2"
    When I follow "Hello World"
    Then I should see "Here is an article"
    And I should see "Welcome to Typo"

  Scenario: Don't show merge to non-admins
    Given I am logged in as a publisher
    And I am on an edit article page
    Then I should not see "Merge Articles"



