*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Capture Screenshot
    open browser  https://opensource-demo.orangehrmlive.com/    chrome
    maximize browser window
    input text  xpath://input[@id='txtUsername']    Admin
    input text  xpath://input[@id='txtPassword']    admin123
    sleep   2
    set screenshot directory    C:/Users/chara/PycharmProjects/sample/Screenshots
    capture page screenshot     C:/Users/chara/PycharmProjects/sample/Testcases/page.png
    capture page screenshot     page9.png
    close browser