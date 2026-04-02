
*** Settings ***
Library    SeleniumLibrary
Library    ../../libraries/browser_options.py
Resource   ../Pages/LoginPage.robot

*** Keywords ***

Open Browser To Application
    ${options}=    Chrome Ci Options
    Open Browser    ${LOGIN_URL}    chrome    options=${options}
    Maximize Browser Window


    Maximize Browser Window

Login With Credentials
    [Arguments]    ${user}    ${pass}
    Input Username    ${user}
    Input Password    ${pass}
    Submit Login
