*** Settings ***
Documentation       This suite handles test cases related to valid credential connected with
...     the test case TC_OH_3,TC_OH_4,TC_OH_5 , scenario SC_OH_2 and requirement OH_Req 4


Resource    ../resource/base/common_functionality.resource

Test Setup      Launch Browser
Test Teardown   End Browser

Test Template     Verify Invalid Credential Template

*** Test Cases ***
TC1     john    john123     Invalid credentials
TC2     peter    peter23       Invalid credentials
TC3     ${EMPTY}      admin123      Username cannot be empty
TC4     admin       ${EMPTY}        Password cannot be empty


*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${username}     ${password}    ${expected_error}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    name=Submit
    Element Should Contain    id=spanMessage    ${expected_error}

