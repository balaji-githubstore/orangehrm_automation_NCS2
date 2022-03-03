*** Settings ***
Documentation       To verify valid add emergengy contact
...     test case with test template and excel

Resource    ../resource/pages/login_page.resource
Resource    ../resource/pages/main_page.resource
Resource    ../resource/pages/my_info_page.resource
Resource    ../resource/pages/emergency_contact_page.resource

Library     DataDriver      file=../test_data/orangehrm_data.xlsx          sheet_name=VerifyAddEmergencyContact

Test Setup      Launch browser
Test Teardown   End Browser
Test Template       Verify Add Emergency Contact Template
*** Test Cases ***
Verify Add emergency Contact Test_${contact_name}

*** Keywords ***
Verify Add Emergency Contact Template
     [Arguments]    ${username}     ${password}   ${contact_name}
     ...    ${relationship}     ${homephone}    ${mobilephone}  ${workphone}
    Enter Username  ${username}
    Enter Password   ${password}
    Click On Login
    Click On MyInfo
    Click On Emergency Contact
    Click On Add Emergency Contact
    Enter Contact Name    ${contact_name}
    Enter Relationship    ${relationship}
    Enter Home Telephone    ${homephone}
    Click On Save Contact
    Validate Added Record   ${contact_name}     ${relationship}     ${homephone}





