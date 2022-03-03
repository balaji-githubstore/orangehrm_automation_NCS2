*** Settings ***
Documentation   This file handles all the element under employee dashboard page

Resource    ../base/common_functionality.resource

*** Variables ***
${HEADER_LOCATOR}       tag=h1
${ASSIGN_LEAVE_LOCATOR}     xpath=//span[text()='Assign Leave']

*** Keywords ***
Validate Dashboard Page Header
    [Arguments]     ${expected_header}
    Element Text Should Be    ${HEADER_LOCATOR}  ${expected_header}

Click On Assign Leave
    Click Element    ${ASSIGN_LEAVE_LOCATOR}