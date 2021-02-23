*** Settings ***

Suite Setup  log to console  opening browser
Suite Teardown  log to console  closing browser
Test Setup  log to console  login to application
Test Teardown  log to console  logout from application


*** Test Cases ***
TC1PrepaidRecharge
    log to console  this is prepaid recharge test

Tc2postpaidrecharge
        log to console  this is postpaid

Tc3search function
    log to console  this is search function

Tc4advance search
    log to console  advance search

