*** Settings ***
Resource          AllPages.robot
Library    OperatingSystem

*** Variables ***
${PerformanceTesting}    False
${MobileTesting}    False

*** Keywords ***
Environment Variables
    #Common Settings
    Add Location Strategy    data-testid    Custom Locator Strategy    persist=true
    #Browser Settings
    Comment    Set Global Variable    ${Browser}    headlesschrome
    Set Global Variable    ${Browser}    gc
    #User Variables
    User Variables
    #Env specific
    TST01
    Comment    TST02
    Comment    SIT

TST01
    #Env Specific configuration
    Set Global Variable    ${HOMEPAGE}    https://www.westwingnow.de
    #DB Connection

User Variables
    #Configured Users
    Set Global Variable    ${tester1_username}    raghu19991@gmail.com
    Set Global Variable    ${tester1_password}    WestW!ng123

Custom Locator Strategy
    [Documentation]    This Keyword allows for identifying elements using attribute name like data-testid which is used extensively across the pages.
    ...    
    ...    //*[@data-testid='abc-xyz'] ---> data-testid:abc-xyz
    ...    This is inline with Selenium locator strategy of id:#id , css:#css etc.
    ...    
    ...    Eg: Click button    data-testid:Register
    ...    
    ...    Note:
    ...    A plugin can also be added as an alternative to this in python to add to the core selenium locator strategy.
    [Arguments]    ${browser}    ${locator}    ${tag}    ${constraints}
    ${element}=    Execute Javascript    return document.querySelectorAll("[data-testid=${locator}]");
    Log    ${element}
    [Return]    ${element}

Click Element using Javascript
    [Arguments]    ${locator}
    Execute Javascript    document.evaluate("${locator}",document.body,null,9,null).singleNodeValue.click()

