
*** Settings ***
Library    ../../libraries/CustomAPI.py

*** Keywords ***
API Login
    [Arguments]    ${user}    ${password}
    ${result}=    Login    ${user}    ${password}
    [Return]    ${result}

API Get Auth
    ${result}=    GetAuth
    [Return]    ${result}
