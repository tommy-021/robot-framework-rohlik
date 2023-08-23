*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    firefox

*** Test Cases ***
Login with correct Username and Password
    [Documentation]    Udela objednavku na webu Rohlik
    [Tags]    TC1
    Open Browser    url=https://rohlik.cz    browser=${BROWSER}