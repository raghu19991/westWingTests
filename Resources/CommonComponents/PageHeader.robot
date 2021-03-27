*** Settings ***
Resource          ../../Config/AllPages.robot

*** Variables ***
${SearchBox}      data-testid:search-input
${WISHLIST}       data-testid:wishlist-bubble

*** Keywords ***
I search for "${product}"
    Input Text    ${SearchBox}    ${product}
    Press Keys    ${SearchBox}    RETURN
    Wait Until Page Contains    Jetzt registrieren und 15€ Gutschein sichern!    10
    #Clicking anywhere on screen other than overlay to remove the overlay
    Double Click Element    ${WISHLIST}
    Wait Until Page Does Not Contain    Jetzt registrieren und 15€ Gutschein sichern!    5

I go to the wishlist page
    Wait Until Page Contains    Wunschliste    5
    Double Click Element    ${WISHLIST}
    Comment    Click Element using Javascript    ${WISHLIST}
    Wait Until Page Contains    Teilen Sie Ihre Wunschliste    5

