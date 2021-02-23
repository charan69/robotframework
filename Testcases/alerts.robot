*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Handling Alerts
    open browser  http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    #accept
    click element  xpath://button[normalize-space()='Click Me']
    sleep  3
    ${handlealertaccept}=     handle alert  accept
    log to console  clicked on accept and the alert is ${handlealertaccept}

    #dismiss
    click element  xpath://button[normalize-space()='Click Me']
    sleep  3
     ${handlealertdismiss}=    handle alert  dismiss
    log to console  clicked on dismiss and the dismissed alert is ${handlealertdismiss}
    sleep   3

    #verify positive
    click element  xpath://button[normalize-space()='Click Me']
    sleep  3
    alert should be present  Press a button!
    log to console  verified positive test

    #verify negative
    #click element  xpath://button[normalize-space()='Click Me']
     #sleep  3
    #alert should not be present  Press a button!
    #handle alert  dismiss
    #log to console  verified negative test


    #verify leave
    click element  xpath://button[normalize-space()='Click Me']
    sleep  3
    ${alertleave}=  handle alert    leave
    sleep   3
    log to console  Verified leave and the alert is ${alertleave}
    close browser
    log to console  closed browser
