*** Settings ***
Documentation   This file handles all the element in the login page
...     of orange hrm portal

Resource    ../base/common_functionality.resource

*** Variables ***
${USERNAME_LOCATOR}     id=txtUsername
${PASSWORD_LOCATOR}     id=txtPassword
${LOGIN_LOCATOR}    name=Submit
${FORGOT_PASSWORD_LOCATOR}      partial link=Forgot
${FOOTER_DESC}      xpath=//div[@id='footer']

*** Keywords ***
Enter Username
    [Arguments]     ${user_name}
    [Documentation]     This keyword will enter username provided
    Input Text    ${USERNAME_LOCATOR}    ${user_name}

Enter Password
    [Arguments]     ${password}
    [Documentation]     This keyword will enter password provided
    Input Password    ${PASSWORD_LOCATOR}    ${password}

Click On Login
    [Documentation]     This keyword will click on login
    Click Element    ${LOGIN_LOCATOR}

Click On Forgot Your Password
    [Documentation]     This keyword will click on Forgot Your Password
    Click Element    ${FORGOT_PASSWORD_LOCATOR}

Get Copy Right Detail
   [Documentation]     Return the footer description
   ${footer_text}    Get Text    ${FOOTER_DESC}
   [Return]     ${footer_text}


