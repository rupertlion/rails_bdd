Feature: Edit articles

    As a publisher
    In order to keep my content accurate
    I would like to be able to edit my articles

    Background:
        Given the following article exists
            | title            | content                                |      
            | Learning Rails 5 | Excited about learning a new framework | 
        And I visit the landing page

    Scenario: Successfully edit an article
        When I click "Edit Article" button
        And I fill in "Title" with "Now learning rails 6"
        And show me the page
        And I click "Update Article" button
        Then I should be on "Learning Rails 6" page
        And I should see "Article was successfully edited."
        And I should see "Learning Rails 6"
        And I should see "Excited about learning a new framework"