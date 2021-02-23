*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/login_resources.robot
Library  DataDriver     ../Testdata/LoginTestData.xlsx


Suite Setup  openMybrowser
Suite Teardown  CloseAllMyBrowsers
Test Template   invalidLoginScenario's

*** Test Cases ***
LoginTestwithExcel using ${username} ${password}



*** Keywords ***
invalidLoginScenario's
    [Arguments]  ${username}   ${password}
    input username  ${username}
    input My password  ${password}
    click on Login button
    error message should be displayed