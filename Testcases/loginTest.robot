*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/loginKeywords.robot


*** Variables ***
${browsername}  chrome
${siteurlname}  http://demo.guru99.com/test/newtours/
${uname}    tutorial
${pwd}   tutorial

*** Test Cases ***
loginTest
    open my browser  ${siteurlname}     ${browsername}
    enter username  ${uname}
    enter password  ${pwd}
    click on signin
    verify succesful login
    close my browsers
