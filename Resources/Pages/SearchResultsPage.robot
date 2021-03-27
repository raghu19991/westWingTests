*** Settings ***
Resource          ../../Config/AllPages.robot

*** Variables ***
${WishList_Icon}    data-testid:wishlist-icon
${Product_Grid}    data-testid:plp-products-grid
${Product_Unique}    data-testid:generic-product
${Results_Filter}    data-testid:cross-category-navigation
${WISHLIST_ATT}    //*[@data-testid='wishlist-icon'][1]/*[local-name() = 'svg']
${WISHLIST_COUNTER}    data-testid:wishlist-counter
${BackToTop_Button}    data-testid:back-to-top-button
${Product_Header}    (//h1[contains(@class,'RegularTitle')]/following::div)[1]

*** Keywords ***
I should see product listing page with a list of products
    Page Should Contain Element    ${Product_Grid}    There are no Products available with the given name.Please check the Name entered
    Wait Until Element Is Enabled    ${BackToTop_Button}
    ${count}=    Get Element Count    ${Product_Unique}
    Should Be True    ${count}>1
    Wait Until Page Contains Element    ${Product_Header}    5
    Wait Until Element Is Visible    ${Product_Unique}    5
    ${totalCount}=    Get Text    ${Product_Header}
    ${totalCount}=    evaluate    int((${totalCount.split()})[0])
    Should Be True    ${totalCount}>1

I click on wishlist icon of the first found product
    [Arguments]    ${product_number}=1
    ${all_wishlist_icons}=    Get WebElements    ${WishList_Icon}
    ${first_Wishlist_icon}=    set variable    ${all_wishlist_icons[0]}
    Scroll Element Into View    ${first_Wishlist_icon}
    Click Element    ${first_Wishlist_icon}

The product should be added to the wishlist
    #Checking that the wichlist icon is colored/filled/selected
    Element Attribute Value Should Be    ${WISHLIST_ATT}    data-is-selected    true
    #Verifying the count of the WIshlist items
    ${wishlistCount}=    Get Text    ${WISHLIST_COUNTER}
    Should Be Equal    ${wishlistCount}    1

