*** Settings ***
Documentation       This suite handles test cases related to valid credential connected with
...     the test case TC_OH_3, scenario SC_OH_2 and requirement OH_Req 4


Resource    ../resource/base/common_functionality.resource

Test Setup      Launch Browser
Test Teardown   End Browser

*** Test Cases ***
Verify Invalid Credential Test
    Input Text    id=txtUsername    john
    Input Password    id=txtPassword    admin123
    Click Element    name=Submit
    Element Should Contain    id=spanMessage    Invalid credentials



