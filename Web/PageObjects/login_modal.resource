*** Settings ***
Library    SeleniumLibrary
Resource    locators.resource

*** Keywords ***
Enter Email
    [Documentation]    Vyplni Email zakaznika
    [Arguments]    ${customer_email}
    Wait For Element And Input Text    ${email_address_path}    ${customer_email}

Enter Password
    [Documentation]    Vyplni Email zakaznika
    [Arguments]    ${customer_password}
    Wait For Element And Input Text    ${password_path}    ${customer_password}

Click On Login Button
    [Documentation]    Klikne na tlacitko Prihlasit se
    Wait Until Element Is Visible    ${login_button_path}    10
    Click Element    ${login_button_path}

Wait For Element And Input Text
    [Documentation]    Vyplni ...
    [Arguments]    ${element}    ${text}
    Wait Until Element Is Visible    ${element}    10
    Click Element    ${element}
    ${webelement}    Get WebElement    ${element}
    Press Keys    ${element}    ${text}
