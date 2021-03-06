*** Settings ***
Documentation       This suite handles test cases related to valid credential connected with
...     the test case TC_OH_2, scenario SC_OH_2 and requirement OH_Req 4
...     simple test case

Resource    ../resource/base/common_functionality.resource
Resource    ../resource/pages/login_page.resource
Resource    ../resource/pages/dashboard_page.resource

Test Setup      Launch Browser
#Test Teardown   End Browser

*** Test Cases ***
Verify Valid Credential Test
    Enter Username  Admin
    Enter Password    admin123
    Click On Login
    Validate Dashboard Page Header  Dashboard

