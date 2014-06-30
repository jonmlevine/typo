Feature: Merge Articles
  As a blog administrator
  In order to organize the blog entries
  I want to be able to merge blog articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And there are at least two blog entries

  Scenario: Successfully merge articles
    Given I am on an edit article page
    Then I should see "Merge Articles"
    When I fill in "merge_with" with "2"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "Lorem Ipsum"
