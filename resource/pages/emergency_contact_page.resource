*** Settings ***
Documentation   This file handles all the elements inside the emergency contact section

Resource    ../base/common_functionality.resource

*** Variables ***
${ADD_CONTACT_LOCATOR}  id=btnAddContact
${CONTACTNAME_LOCATOR}  id=emgcontacts_name
${RELATIONSHIP_LOCATOR}  id=emgcontacts_relationship
${HOMEPHONE_LOCATOR}  id=emgcontacts_homePhone
${SAVE_LOCATOR}  id=btnSaveEContact
${CONTACTLISTTABLE_LOCATOR}  id=emgcontact_list

*** Keywords ***
Click On Add Emergency Contact
    Click Element    ${ADD_CONTACT_LOCATOR}

Enter Contact Name
    [Arguments]      ${contact_name}
    Input Text    ${CONTACTNAME_LOCATOR}    ${contact_name}

Enter Relationship
    [Arguments]      ${relationship}
    Input Text    ${RELATIONSHIP_LOCATOR}   ${relationship}

Enter Home Telephone
    [Arguments]      ${homephone}
     Input Text    ${HOMEPHONE_LOCATOR}    ${homephone}

Click On Save Contact
     Click Element   ${SAVE_LOCATOR}

Validate Added Record
    [Arguments]     ${contact_name}     ${relationship}      ${homephone}
    Table Should Contain    ${CONTACTLISTTABLE_LOCATOR}      ${contact_name}
    Table Should Contain    ${CONTACTLISTTABLE_LOCATOR}    ${relationship}
    Table Should Contain    ${CONTACTLISTTABLE_LOCATOR}    ${homephone}