*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Navigation tests
    open browser  https://www.google.com/   chrome
    maximize browser window
    ${loc}=     get location
    log to console  original location is ${loc}
    sleep   3
    go to  https://www.bing.com/
    ${loc}=     get location
    log to console  go to location is ${loc}
    sleep  3
    go back
    ${loc}=     get location
    log to console  after going back to orginal location is ${loc}
    sleep  3
    close browser
