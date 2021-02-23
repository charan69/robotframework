*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio buttons
    open browser     ${url}   ${browser}
    maximize browser window
    set selenium speed  2seconds
    #selecting checkbox
    select radio button  sex    sex-1
    select radio button  exp    exp-6
    #selecting checkbox
    select checkbox  //input[@id='tea1']
    select checkbox  //input[@id='tea2']
    unselect checkbox   //input[@id='tea1']
    close browser

*** Keywords ***
