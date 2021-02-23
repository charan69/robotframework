*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Handling Frames
    open browser  https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html    chrome
    maximize browser window
    select frame  packageListFrame
    click link  org.openqa.selenium
    unselect frame
    sleep   3
    select frame  packageFrame
    click link  WebDriver
    unselect frame
    sleep   3
    select frame  classFrame
    click link  Help
    sleep   3
    click link  Index
    sleep   3
    close browser