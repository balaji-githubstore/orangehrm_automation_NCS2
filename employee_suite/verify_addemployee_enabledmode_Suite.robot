*** Settings ***
Documentation       To verify the valid record of add employee by providing credentials with enabled mode
...         test case TC_OH_16, SC_OH_09,

Resource    ../resource/base/common_functionality.resource

Test Setup      Launch Browser
Test Teardown   End Browser

*** Test Cases ***



*** Keywords ***
Verify Add Employee Enabled Mode Template
    [Arguments]     ${username}     ${password}     ${firstname}     ${middlename}
    ...     ${lastname}     ${employee_id}      ${file_detail}      ${user_id}     ${login_password}
    ...     ${confirm_password}     ${login_status}     ${expected_header}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    name=Submit
    Mouse Over    link=PIM
    Click Element     link=Add Employee
    Input Text    id=firstName    ${firstname}
    Input Text    id=middleName   ${middlename}
    Input Text    id=lastName    ${lastname}
    Input Text    id=employeeId    ${employee_id}
    Choose File    id=photofile   file_path=${EXECDIR}${/}files${/}${file_detail}
    Select Checkbox    id=chkLogin
    Input Text    id=user_name    ${user_id}
    Input Text    id=user_password  ${login_password}
    Input Text    id=re_password    ${confirm_password}
    Select From List By Value    id=status   ${login_status}
    Click Element    id=btnSave

    Element Text Should Be    xpath=//h1[contains(text(),'Pers')]    ${expected_header}
    Textfield Value Should Be    id=personal_txtEmpFirstName    ${firstname}
    Textfield Value Should Be    id=personal_txtEmployeeId    ${employee_id}

    Click Element    link=Employee List
    Input Text    id=empsearch_id    ${employee_id}
    Click Element    id=searchBtn
    Table Should Contain    id=resultTable    ${firstname}
    Table Should Contain    id=resultTable    ${employee_id}

