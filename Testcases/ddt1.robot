*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/login_resources.robot
Suite Setup  openMybrowser
Suite Teardown  CloseAllMyBrowsers
Test Template   invalidLoginScenario's
#Test Template  validLoginScenario's

*** Test Cases ***      Username        password
valid user name empty password   admin@yourstore.com     ${EMPTY}
empty user name and valid password  ${EMPTY}    admin
valid user name invalid password    admin@yourstore.com     admin1
invalid username valid password     admin1@yourstore.com    admin
valid username valid password       admin@yourstore.com     admin




*** Keywords ***
invalidLoginScenario's
    [Arguments]  ${uname}   ${upwd}
    input username  ${uname}
    input My password  ${upwd}
    click on Login button
    error message should be displayed

validLoginScenario's
    [Arguments]  ${uname}   ${upwd}
    input username  ${uname}
    input My password  ${upwd}
    click on Login button
    verify succesful login

