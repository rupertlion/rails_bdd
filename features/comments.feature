Feature: Article comments

   As a user
   In order to have my opinion heard
   I would like to be able to add comments to a specific article
    
    Background:
    Given the following article exists
        | title            | content                                |      
        | Learning Rails 5 | Excited about learning a new framework |
    And the following comment exists, with associated email address
        | comment         | email               |      
        | Love this piece | goodstuff@gmail.com |  
    And I visit the landing page

    Scenario: Comment successfully applied to article with corresponding email (happy path)

        When I click "Comment on Article" button
        And I fill in "Comment" with "Love this piece"
        And I fill in "Email" with "goodstuff@gmail.com"
        And I click "Leave Comment" button 
        And I should see "Comment was successfully applied."
        And I should see "Love this piece"
        And I should see "goodstuff@gmail.com"

    Scenario: Comment successfully applied to article without corresponding email (happy path)

        When I click "Comment on Article" button
        And I fill in "Comment" with "Love this piece"
        And I click "Leave Comment" button 
        And I should see "Comment was successfully applied."
        And I should see "Love this piece"

    Scenario: Comment not provided - unsuccessful (sad path)

        When I click "Comment on Article" button
        And I click "Leave Comment" button 
        And I should see "Please provide a comment."