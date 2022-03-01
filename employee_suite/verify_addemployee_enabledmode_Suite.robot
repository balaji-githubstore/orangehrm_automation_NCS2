*** Settings ***
Documentation       To verify the valid record of add employee by providing credentials with enabled mode
...         test case TC_OH_16, SC_OH_09,

Resource    ../resource/base/common_functionality.resource

Test Setup      Launch Browser
Test Teardown   End Browser

*** Test Cases ***
Verify Add Employee Enabled Mode Test
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    name=Submit
    Mouse Over    link=PIM
    Click Element     link=Add Employee
    Input Text    id=firstName    john
    Input Text    id=middleName   ray
    Input Text    id=lastName    smith
    Input Text    id=employeeId    E102
    Choose File    id=photofile   file_path=${EXECDIR}${/}files${/}Photo_e101.png
    Select Checkbox    id=chkLogin
    Input Text    id=user_name    useremp123
    Input Text    id=user_password  userpass
    Input Text    id=re_password    userpass
    Select From List By Value    id=status   Enabled
    Click Element    id=btnSave

    Element Text Should Be    xpath=//h1[contains(text(),'Pers')]    Personal Details
    Textfield Value Should Be    id=personal_txtEmpFirstName    john
    Textfield Value Should Be    id=personal_txtEmployeeId    E102

    Click Element    link=Employee List
    Input Text    id=empsearch_id    E102
    Click Element    id=searchBtn
    Table Should Contain    id=resultTable    john
    Table Should Contain    id=resultTable    E102




