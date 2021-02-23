*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Capture Screenshot
    open browser  https://opensource-demo.orangehrmlive.com/    headlesschrome
    maximize browser window
    input text  xpath://input[@id='txtUsername']    Admin
    input text  xpath://input[@id='txtPassword']    admin123
    sleep   2
    set screenshot directory    C:/Users/chara/PycharmProjects/sample/Screenshots
    #capture page screenshot     C:/Users/chara/PycharmProjects/sample/Testcases/page.png
    capture page screenshot     page3.png
    close browser