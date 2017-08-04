Feature: Search
    As a user I want to perform a search in google website
    Verifying if the search brings me the expected content

    Background:
        * Access google page

    Scenario: User do a search verifying the results
        Given I have to do a search by "Altran" in google page
        When I do a search
        Then "www.altran.pt/" should be displayed in google search results
        When I click on Altran portugal webpage link in google search results
        Then I should be redirected to "http://www.altran.pt/"