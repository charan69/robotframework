*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/


*** Test Cases ***
TestingInputBox
    open browser     ${url}   ${browser}
    maximize browser window
    title should be  nopCommerce demo store
    click link   xpath://a[normalize-space()='Log in']
    ${email}    set variable  id:Email
    element should be visible  ${email}
    element should be enabled  ${email}
    sleep   5
    input text  ${email}    charankartheek.budama@gmail.com
    sleep   5
    clear element text  ${email}
    sleep   5
    close browser





*** Keywords ***
