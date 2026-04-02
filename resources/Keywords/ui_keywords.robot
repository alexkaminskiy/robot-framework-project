
*** Settings ***
Library    SeleniumLibrary
Resource   ../Pages/LoginPage.robot

*** Keywords ***
Open Browser To Application
    Open Browser    ${LOGIN_URL}   ${BROWSER} options=add_argument("--headless"), add_argument("--no-sandbox"), add_argument("--disable-dev-shm-usage"), add_argument("--disable-gpu"), add_argument("--disable-software-rasterizer")
    Maximize Browser Window

Login With Credentials
    [Arguments]    ${user}    ${pass}
    Input Username    ${user}
    Input Password    ${pass}
    Submit Login
