*** Settings ***
Library    SeleniumLibrary
Resource    web_init.resource

*** Variables ***
${browser}    firefox
${page_url}    https://rohlik.cz

*** Test Cases ***
Login with correct Username and Password
    [Documentation]    Udela objednavku na webu Rohlik
    [Setup]    Get User And Order Data
    [Tags]    TC1
    Open Browser to Webpage    ${page_url}
    Login Into Account
    Logout From Account
