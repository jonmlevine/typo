Feature: Edit Article
  As a blog administrator
  In order to improve my blog entries
  I want to be able to edit articles on my blog

  Background:
    Given the blog is set up
    And I am logged in as an admin
    And there is at least one blog entry

  Scenario: Start to edit an article
    Given I am on the manage articles page
    When I follow "Edit"
    Then I should see "Edit article"
