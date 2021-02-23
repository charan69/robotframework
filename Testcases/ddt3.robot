*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/login_resources.robot
Library  DataDriver     ../Testdata/LoginTestDataCSV.csv
Library  xlrd


Suite Setup  openMybrowser
Suite Teardown  CloseAllMyBrowsers
#Test Template   invalidLoginScenario's
Test Template  validLoginScenario's

*** Test Cases ***
LoginTestwithCSV using ${username} ${password}



*** Keywords ***
invalidLoginScenario's
    [Arguments]  ${username}   ${password}
    input username  ${username}
    input My password  ${password}
    click on Login button
    error message should be displayed

validLoginScenario's
    [Arguments]  ${username}   ${password}
    input username  ${username}
    input My password  ${password}
    click on Login button
    verify succesful login