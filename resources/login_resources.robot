*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://admin-demo.nopcommerce.com/
${browser}   chrome

*** Keywords ***
openMybrowser
    open browser    ${url}      ${browser}
    maximize browser window

closeMyBrowser
    close browser

CloseAllMyBrowsers
    close all browsers

open Login page
    go to   ${url}


input username
    [Arguments]     ${username}
    input text  xpath://input[@id='Email']      ${username}
    sleep  2

input My password
    [Arguments]     ${password}
    input text  xpath://input[@id='Password']    ${password}
    sleep   2

click on Login button
    click element  xpath://input[@value='Log in']

click logout
    click link  xpath://a[normalize-space()='Logout']

error message should be displayed
    page should contain  Login was unsuccessful
    log to console  Login Unsuccesful! try again
    log  Login Unsuccesful! try again

Verify succesful login
    page should contain  Dashboard
    log  logged in succesfully!
    log to console  logged in succesfully!




