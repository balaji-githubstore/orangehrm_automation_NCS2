*** Settings ***
Documentation   This file handles all the menu in the orange hrm application

Resource    ../base/common_functionality.resource

*** Variables ***
${MYINFO_LOCATOR}       id=menu_pim_viewMyDetails
${DIRECTORY_LOCATOR}       link=Directory

*** Keywords ***
Click On MyInfo
    Click Element    ${MYINFO_LOCATOR}

Click On Directory
    Click Element    ${DIRECTORY_LOCATOR}