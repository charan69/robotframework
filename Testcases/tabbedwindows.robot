*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Handling tabbed windows
    open browser  http://demo.automationtesting.in/Windows.html     chrome
    maximize browser window
    click element   xpath://a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
    sleep  3
    select window  title=SeleniumHQ Browser Automation
    sleep   3
    click element   xpath://a[contains(text(),'Downloads')]
    sleep   3
    select window  title=Frames & windows
    sleep   2
    ${titleofmainwindow}=   get title
    log to console  switched back to main window and the title is ${titleofmainwindow}
    close all browsers