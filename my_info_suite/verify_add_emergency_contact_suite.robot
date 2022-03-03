*** Settings ***
Documentation       To verify valid add emergengy contact

Resource    ../resource/base/common_functionality.resource
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
    Input Text    id=txtUsername    ${username}
    Input Text    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Mouse Over    id=menu_pim_viewMyDetails
    Click Element    id=menu_pim_viewMyDetails
    Click Element    link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    id=emgcontacts_name    ${contact_name}
    Input Text    id=emgcontacts_relationship    ${relationship}
    Input Text    id=emgcontacts_homePhone    ${homephone}
    Input Text    id=emgcontacts_mobilePhone    ${mobilephone}
    Input Text    id=emgcontacts_workPhone    ${workphone}
    Click Element    id=btnSaveEContact
    Table Should Contain    id=emgcontact_list      ${contact_name}
    Table Should Contain    id=emgcontact_list    ${relationship}
    Table Should Contain    id=emgcontact_list    ${homephone}



