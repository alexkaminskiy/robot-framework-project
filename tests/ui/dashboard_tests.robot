
*** Settings ***
Resource    ../../resources/variables.robot
Resource    ../../resources/Keywords/ui_keywords.robot
Resource    ../../resources/Pages/DashboardPage.robot
Library     SeleniumLibrary

*** Test Cases ***
Open Dashboard
    Open Browser To Application
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Open Dashboard
    Dashboard Should Be Visible
    Close Browser
