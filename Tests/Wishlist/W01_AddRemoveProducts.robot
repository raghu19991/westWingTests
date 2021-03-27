*** Settings ***
Documentation     *WishList*
...    Tests to verify that products can be searched,relevant products can be added to and removed from user's wishlist.
...    
...    *Tag*
...    Wishlist
Suite Setup       Environment Variables
Suite Teardown    Close Browser
Resource          ../../Config/AllPages.robot

*** Variables ***

*** Test Cases ***
TC001_Add without Login and Remove Product_ExtUser
    Given I am on the WestwingNow home page
    When I search for "möbel"
    Then I should see product listing page with a list of products
    When I click on wishlist icon of the first found product
    Then I should see the login/registration overlay
    When I switch to login form of the overlay
    And I log in with "tester1" credentials
    Then the product should be added to the wishlist
    And I go to the wishlist page
    And I delete the product from my wishlist
