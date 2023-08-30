*** Settings ***
Library    SeleniumLibrary
Resource    locators.resource

*** Keywords ***
Click On Account Button
    [Documentation]    Klikne na tlacitko Ucet
    Wait Until Element Is Visible    ${account_button_path}
    Click Element    ${account_button_path}

Click On Avatar On Main Page
    [Documentation]    Klikne na avatar uzivatele na hlavni strance


#jiny modal
Click On Logout Button
    [Documentation]    Klikne na tlacitko Odhlasit se
    Wait Until Element Is Visible    ${logout_button_path}
    Click Element    ${logout_button_path}