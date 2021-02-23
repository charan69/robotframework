*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling dropdowns and listboxes
    open browser     ${url}   ${browser}
    maximize browser window
    select from list by label   //select[@id='continents']  Australia
    sleep   2
    select from list by index   //select[@id='continents']  2
    sleep   2
    #now select from listbox - can select more than option
    select from list by label  //select[@id='selenium_commands']    Navigation Commands
    sleep   2
    select from list by label  //select[@id='selenium_commands']    Switch Commands
    sleep   2
    select from list by index  //select[@id='selenium_commands']    4
    sleep   2
    unselect from list by label  //select[@id='selenium_commands']    Navigation Commands
    sleep   2
    unselect from list by label  //select[@id='selenium_commands']    Switch Commands
    sleep   2
    unselect from list by index  //select[@id='selenium_commands']    4
    sleep   2
    close browser

*** Keywords ***
