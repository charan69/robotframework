*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/locators.py

*** Keywords ***
open my browser
    [Arguments]  ${siteurl}  ${browser}
    open browser    ${siteurl}   ${browser}
    maximize browser window

enter username
    [Arguments]  ${username}
    input text  ${txt_loginusername}    ${username}

enter password
    [Arguments]  ${userpwd}
    input password  ${txt_loginpassword}    ${userpwd}

click on signin
    click button  ${btn_signinbutton}

Verify succesful login
    title should be  Login: Mercury Tours

close my browsers
    close all browsers
