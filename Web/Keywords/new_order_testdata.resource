*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
&{data}    &{EMPTY}

*** Keywords ***
Get User And Order Data
    [Documentation]    Pripravi vsechna Data
    Set To Dictionary    ${data}
    ...    customer_email=b.tommy@seznam.cz
    RETURN    ${data}



