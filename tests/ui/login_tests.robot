
*** Settings ***
Resource    ../../resources/variables.robot
Resource    ../../resources/Keywords/ui_keywords.robot
Resource    ../../resources/Pages/LoginPage.robot
Library     SeleniumLibrary

*** Test Cases ***
Valid Login
    Open Browser To Application
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Page Should Contain    Employee Management
    Close Browser
