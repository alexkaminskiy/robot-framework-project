
*** Settings ***
Library    SeleniumLibrary
Resource   ../Pages/LoginPage.robot

*** Keywords ***
Open Browser To Application
    Open Browser    ${LOGIN_URL}   ${BROWSER}
    Maximize Browser Window

Login With Credentials
    [Arguments]    ${user}    ${pass}
    Input Username    ${user}
    Input Password    ${pass}
    Submit Login
