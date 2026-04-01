
*** Settings ***
Library    ../../libraries/CustomAPI.py

*** Keywords ***
API Login
    [Arguments]    ${user}    ${password}
    ${result}=    Login    ${user}    ${password}
    RETURN    ${result}

API Get Auth
    ${result}=    GetAuth
    RETURN    ${result}
