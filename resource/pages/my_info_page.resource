*** Settings ***
Documentation   This file handles all the elements inside the my info page

Resource    ../base/common_functionality.resource

*** Variables ***
${EMERGENCY_LOCATOR}    link=Emergency Contacts

*** Keywords ***
Click On Emergency Contact
    Click Element    ${EMERGENCY_LOCATOR}