
*** Settings ***
Resource    ../../resources/variables.robot
Resource    ../../resources/Keywords/api_keywords.robot
Library     ../../libraries/CustomAPI.py

*** Test Cases ***
Login API
    ${token}=    API Login    ${VALID_USER}    ${VALID_PASS}
    Should Not Be Empty    ${token}

Get Authenticate List
    ${list}=    API Get Auth
    Should Not Be Empty    ${list}
