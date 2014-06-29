Feature: Merge Articles
  As a blog administrator
  In order to organize the blog entries
  I want to be able to merge blog articles

  Background:
    Given the blog is set up
    And there are at least two blog entries

  Scenario: Successfully merge articles
    Given I am on an edit article page
    When I fill in "merge_article_id" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "Lorem Ipsum"
