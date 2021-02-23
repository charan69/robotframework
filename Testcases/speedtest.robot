*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
RegTest
    open browser  http://demowebshop.tricentis.com/register     chrome
    maximize browser window
    ${speed}=   get selenium speed
    log to console  default speed is ${speed}
    set selenium speed  2
    select radio button     Gender  gender-male
    input text  xpath://input[@id='FirstName']      charan
    input text  xpath://input[@id='LastName']       budama
    input text  xpath://input[@id='Email']      charan@budama.com
    input text  xpath://input[@id='Password']       hello@123
    input text  xpath://input[@id='ConfirmPassword']    hello@123
    ${speed}=   get selenium speed
    log to console  now the speed is ${speed}
    close browser
