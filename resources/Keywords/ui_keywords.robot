
*** Settings ***
Library    SeleniumLibrary
Resource   ../Pages/LoginPage.robot

*** Keywords ***
Open Browser To Application
    ${options}=    Evaluate    from selenium.webdriver import ChromeOptions;
    o=ChromeOptions(); o    selenium.webdriver
    Call Method    ${options}    add_argument    --headless=new
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Call Method    ${options}    add_argument    --disable-software-rasterizer
    Call Method    ${options}    add_argument    --window-size=1920,1080

    Open Browser    ${LOGIN_URL}    chrome    
    ...    options=${options}

    Maximize Browser Window

Login With Credentials
    [Arguments]    ${user}    ${pass}
    Input Username    ${user}
    Input Password    ${pass}
    Submit Login
