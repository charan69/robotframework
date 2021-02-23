*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
RegTest
    open browser  http://demowebshop.tricentis.com/register     chrome
    maximize browser window
    ${implicitwait}=    get selenium implicit wait
    log to console  default implicit wait is ${implicitwait}
    set selenium implicit wait  10
    ${implicitwait}=    get selenium implicit wait
    log to console  now implicit wait is ${implicitwait}
    select radio button     Gender  gender-male
    input text  xpath://input[@id='FirstName']      charan
    input text  xpath://input[@id='LastName']       budama
    input text  xpath://input[@id='Email']      charan@budama.com
    input text  xpath://input[@id='Password']       hello@123
    input text  xpath://input[@id='ConfirmPassword1']    hello@123
    close browser