Feature: Write Articles
  As a blog administrator
  In order to make blogs better organized and make posts easier to find
  I want to be able to create article categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: See categories page
    Given I am on the admin page 
    When I follow "Categories"
    Then I should be on the admin categories page
