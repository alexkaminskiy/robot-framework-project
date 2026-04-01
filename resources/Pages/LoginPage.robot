
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USERNAME_FIELD}    id=UserName
${PASSWORD_FIELD}    id=Password
${LOGIN_BUTTON}      xpath=//button[text()='Sign In']
${EMPLOYEE_HEADER}   xpath=//h1[contains(text(), 'Employee Management')]

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Submit Login
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    timeout=10
    Click Element    ${LOGIN_BUTTON}

Employee Header Should Be Visible
    Page Should Contain    Employee List
