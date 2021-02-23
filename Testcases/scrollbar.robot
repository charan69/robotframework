*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
ScrollTest
    open browser  https://www.countries-ofthe-world.com/all-countries.html      chrome
    maximize browser window
    execute javascript  window.scrollTo(0,2000)
    sleep   3
    execute javascript  window.scrollTo(0,-2000)
    sleep   3
    close browser

