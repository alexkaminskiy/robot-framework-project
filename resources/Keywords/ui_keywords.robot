
*** Settings ***
Library    SeleniumLibrary
Resource   ../Pages/LoginPage.robot

*** Keywords ***
Open Browser To Application
    [Documentation]    Opens Chrome in Docker/GitHub CI with correct headless flags.
    Open Browser    ${LOGIN_URL}    chrome
    ...    options=add_argument=--headless=new;add_argument=--no-sandbox;add_argument=--disable-dev-shm-usage;add_argument=--disable-gpu;add_argument=--window-size=1920,1080
    Maximize Browser Window

Login With Credentials
    [Arguments]    ${user}    ${pass}
    Input Username    ${user}
    Input Password    ${pass}
    Submit Login
