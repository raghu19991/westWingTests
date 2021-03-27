*** Settings ***
Resource          ../../Config/AllPages.robot

*** Variables ***
${Cookie_BannerText}    //p[@id='onetrust-policy-text']
${Cookie_AcceptButton}    xpath=//button[@id='onetrust-accept-btn-handler' and text()='Cookies akzeptieren']

*** Keywords ***
I am on the WestwingNow home page
    open browser    ${HOMEPAGE}    ${Browser}    executable_path=${EXECDIR}\\\\chromedriver.exe
    Set Window Size    1050    708
    Wait Until Page Contains Element    ${Cookie_AcceptButton}    5
    Click Button    ${Cookie_AcceptButton}
    Wait Until Element Is Not Visible    ${Cookie_AcceptButton}

I signout of my account
    No Operation

