*** Settings ***
Documentation   This file contains browser configuration details, reusable keywords for automation.

Library     SeleniumLibrary

*** Variables ***
${BROWSER_NAME}     chrome
${URL}      https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Launch Browser
    Open Browser    browser=${BROWSER_NAME}     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    path=${EXECDIR}${/}screenshots
    Go To    url=${URL}

End Browser
    Capture Page Screenshot
    Close Browser

