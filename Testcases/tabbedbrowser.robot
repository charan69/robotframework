*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Handling tabbed browsers
    open browser  https://www.google.com/   chrome
    maximize browser window
    sleep   2
    open browser  https://www.bing.com/     chrome
    maximize browser window
    sleep   2

    switch browser  1
    ${title}=   get title
    log to console  title of the first browser is ${title}

    sleep   2

    switch browser  2
    ${title}=   get title
    log to console  title of the second browser is ${title}

    close all browsers