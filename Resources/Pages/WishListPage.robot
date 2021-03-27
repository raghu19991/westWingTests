*** Settings ***
Resource          ../../Config/AllPages.robot

*** Variables ***
${DELETE_BUTTON}    (//button[contains(@class,'qaBlockListProduct') and contains(@class,'delete')])

*** Keywords ***
I delete the product from my wishlist
    Wait Until Page Contains    In den Warenkorb    5
    Wait Until Page Contains Element    ${DELETE_BUTTON}    5
    Click Button    ${DELETE_BUTTON}
    Wait Until Page Does Not Contain    ${DELETE_BUTTON}

