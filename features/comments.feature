Feature: Article comments

   As a user
   In order to have my opinion heard
   I would like to be able to add comments to a specific article
    
    Background:
    Given the following article exists
        | title            | content                                |      
        | Learning Rails 5 | Excited about learning a new framework |
    And I visit the landing page
    And I click "Show" button

    Scenario: Comment successfully applied to article with corresponding email (happy path)

        When I fill in "Body" with "Love this piece"
        And I fill in "Commenter" with "goodstuff@gmail.com"
        And I click "Create Comment" button 
        And I should see "Love this piece"
        And I should see "goodstuff@gmail.com"

    Scenario: Comment successfully applied to article without corresponding email (happy path)

        When I fill in "Body" with "Love this piece"
        And I click "Create Comment" button 
        And I should see "Love this piece"

    Scenario: Comment not provided - unsuccessful (sad path)

        When I click "Create Comment" button
        And I should see "Please provide a comment."


    Scenario: Comment unsuccessfully applied to article due to incorrect email format (sad path)

        When I fill in "Body" with "Love this piece"
        And I fill in "Commenter" with "goodstuff@gmail"
        And I click "Create Comment" button 
        And I should see "Please provide a comment."