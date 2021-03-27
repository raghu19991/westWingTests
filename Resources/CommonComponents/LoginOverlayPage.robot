*** Settings ***
Resource          ../../Config/AllPages.robot

*** Variables ***
${email}    data-testid:long-register-email-field
${password}    data-testid:long-register-password-field
${termsAndConditions}    //input[@name='isTermsAccepted']
${Registration}    data-testid:login_reg_submit_btn
${LoginOverLay}    data-testid:login_and_register

*** Keywords ***
I should see the login/registration overlay
    Wait Until Page Contains Element    ${LoginOverLay}    5
    Page Should Contain    Neukunde?
    Page Should Contain    Schnell registrieren, damit Sie Ihr Lieblingsprodukt dauerhaft speichern können!

I log in with "${tester1}" credentials
    ${USER_EMAIL}=    Evaluate    '${${tester1}_username}'
    ${USER_PASSWORD}=    Evaluate    '${${tester1}_password}'
    Input Text    ${email}    ${USER_EMAIL}
    Input Password    ${password}    ${USER_PASSWORD}
    Select Checkbox    ${termsAndConditions}
    Click Button    ${Registration}
    Wait Until Element Is Not Visible    ${Registration}    5
    Wait Until Page Does Not Contain Element    ${LoginOverLay}

I switch to login form of the overlay
    No Operation

