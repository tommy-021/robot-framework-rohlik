*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ./web_test_variables.resource

*** Keywords ***
Open Browser to Webpage
    [Documentation]    Prihlasi se do weboveho prohlizece
    [Arguments]    ${page_url}    ${browser}=${BROWSER}
    Open Browser    ${page_url}   ${browser}
    Maximize Browser Window
    Accept Cookies

Accept Cookies
    [Documentation]    Overi, zda je potreba odsouhlasit cookies. Pokud ano, tak je odsouhlasi.
    [Arguments]    ${timeout}=3
    ${cookies_presented_path}    Set Variable    //*[@id='CybotCookiebotDialog']
    ${accept_cookies_button_path}    Set Variable    //*[@class='CybotCookiebotDialogBodyButton' and (contains(text(), 'Povolit všechny'))]
    ${cookies_presented}    Run Keyword And Return Status
    ...    Wait Until Page Contains Element    ${cookies_presented_path}    ${timeout}
    IF    ${cookies_presented}
        Click Button    ${accept_cookies_button_path}
    END

    
