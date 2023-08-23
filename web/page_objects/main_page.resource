*** Settings ***
Library    SeleniumLibrary
Resource    locators.resource


*** Keywords ***
Click On Account Button
    [Documentation]    dfkhskjhfjs
    Wait Until Element Is Visible    ${account-button}
    Click Element    ${account-button}