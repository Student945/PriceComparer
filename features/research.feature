Feature: As a registered user I want to do a research and sort results by a filter. I want to do
        a review of the product and save a research



Scenario: Login
    Given I am a registered User
    And I am on the Sign in Page
    When I insert email email and password 
    And I click button "Log in"
    Then I am redirected to Home Page

Scenario: Research by keyword and filter by price
    Given I am on the Home Page
    When I fill the keyword space with "car" 
    And I select the option filter "Prezzo più basso:"
    And i fill the Price min with 15 and Price max with 50
    And I press cerca button
    Then I should be on "http://127.0.0.1:3000/pages/search?keyword=car&minprice=15&maxprice=50&minf=1&place=&maxtime=30&commit=Cerca&sort_order=PricePlusShippingLowest"
    And I should see some results with name "car" in it
    And the results should be ordere by price

Scenario: Save Research
    Given I am on the Search Page 
    When I Click on Save button
    And I am redirected to a "http://127.0.0.1:3000/pages/search?keyword=car&minprice=15&maxprice=50&minf=1&place=&maxtime=30&commit=Cerca&sort_order=PricePlusShippingLowest"
    And I press Save button
    And I am redirected to User Page
    Then i should see the saved research

Scenario: Make a review
    Given I am on the Search Page   
    When I click on Review button
    And I am redirected to New Review Page
    And I fill the form 
    And I press the submit button
    And I am redirected to User Page 
    Then i should see the Review
