*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TableValidations
    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    execute javascript  window.scrollTo(0,2000)
    sleep   2
    ${tablerows}=   get element count  xpath://table[@name='BookTable']/tbody/tr
    log to console  ${tablerows}
    ${tablecolumns}=    get element count  xpath://table[@name='BookTable']/tbody/tr[1]/th
    log to console  ${tablecolumns}
    ${rowvalue}=    get text  xpath://table[@name='BookTable']/tbody/tr[6]/td[1]
    log to console  ${rowvalue}
    table column should contain  xpath://table[@name='BookTable']     3   Subject
    sleep   2
    table row should contain  xpath://table[@name='BookTable']      6   JAVA
    sleep   2
    table cell should contain   xpath://table[@name='BookTable']    3   2   Mukesh
    sleep   2
    table header should contain     xpath://table[@name='BookTable']    Price
    sleep   2
    table should contain    xpath://table[@name='BookTable']    Javascript
    execute javascript  window.scrollTo(0,-2000)
    sleep   2

    close browser