Feature: Manage Categories
  As a blog administrator
  In order to make blogs better organized and make posts easier to find
  I want to be able to manage article categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: See categories page
    Given I am on the admin page 
    When I follow "Categories"
    Then I should be on the admin categories page

  Scenario: Add category
    Given I am on the admin categories page
    When I fill in "category_name" with "Books"
    And I press "Save"
    Then I should be on the admin categories page
    And I should see "Category was successfully saved."
    And I should see "Books"
