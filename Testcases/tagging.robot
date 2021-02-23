*** Settings ***



*** Test Cases ***
Tc1 user Registration Test
    [Tags]  sanity
    log to console  This is user registration test
    log to console  This is user registration test over

Tc2 Login Test
    [Tags]  Regression
    log to console  This is login test
    log to console  This is login tests over

Tc3 Search User
    [Tags]  Regression
    log to console  This is search user test
    log to console  This is search user test is over

Tc4 Logout Test
    [Tags]  sanity
    log to console  This is logout test
    log to console  This is logout tests over


