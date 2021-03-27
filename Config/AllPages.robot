*** Settings ***
Documentation    Consolidated list of Pages. Any new Page that gets created needs to be added here
Resource          Environment.robot
Resource          ../Resources/Pages/HomePage.robot
Resource    ../Resources/CommonComponents/PageHeader.robot
Resource    ../Resources/Pages/SearchResultsPage.robot
Resource    ../Resources/Pages/WishListPage.robot
Resource    ../Resources/CommonComponents/LoginOverlayPage.robot
Library           SeleniumLibrary
Library    OperatingSystem

