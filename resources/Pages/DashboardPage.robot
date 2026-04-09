*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Dashboard}  xpath=//a[contains(text(), 'Dashboard')]

*** Keywords ***
Dashboard Should Be Visible
    Page Should Contain    Workforce Dashboard

Open Dashboard
    Wait Until Element Is Visible    ${Dashboard}    timeout=10
    Click Element  ${Dashboard}
