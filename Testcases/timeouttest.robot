*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
RegTest
    open browser  http://demowebshop.tricentis.com/register     chrome
    maximize browser window
     ${timeout}=   get selenium timeout
    log to console  earlier default timeout is ${timeout}
    set selenium timeout  10
    ${timeout}=   get selenium timeout
    log to console  now default timeout is ${timeout}
    #wait until page contains  invRegister
    select radio button     Gender  gender-male
    input text  xpath://input[@id='FirstName']      charan
    input text  xpath://input[@id='LastName']       budama
    input text  xpath://input[@id='Email']      charan@budama.com
    input text  xpath://input[@id='Password']       hello@123
    wait until element is visible    xpath://input[@id='ConfirmPassword1']
    input text  xpath://input[@id='ConfirmPassword1']    hello@123
    close browser