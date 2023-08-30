*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../PageObjects/main_page.resource
Resource    ../PageObjects/login_modal.resource

*** Variables ***
${data_file}    ${CURDIR}${/}..${/}Data${/}customer_password.csv

*** Keywords ***
Login Into Account
    [Documentation]    Prihlasi se do uctu zakaznika
    [Arguments]    ${email_address}=${data}[customer_email]
    #...    ${customer_password}=${data}[customer_password]
    Click On Account Button
    Enter Email    ${email_address}
    ${customer_password}   Get File    ${data_file}
    Enter Password    ${customer_password}
    Click On Login Button

Logout From Account
    [Documentation]    Prihlasi se do uctu zakaznika
    Click On Account Button
    Click On Logout Button
