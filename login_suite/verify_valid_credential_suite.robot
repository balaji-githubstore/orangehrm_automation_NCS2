*** Settings ***
Documentation       This suite handles test cases related to valid credential connected with
...     the test case TC_OH_2, scenario SC_OH_2 and requirement OH_Req 4

Resource    ../resource/base/common_functionality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser


*** Test Cases ***
Verify Valid Credential Test
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    name=Submit
    Element Text Should Be    tag=h1    Dashboard



