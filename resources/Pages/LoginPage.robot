
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USERNAME_FIELD}    id=UserName
${PASSWORD_FIELD}    id=Password
${LOGIN_BUTTON}      xpath=//input[@value='Log in']

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Submit Login
    Click Button    ${LOGIN_BUTTON}
