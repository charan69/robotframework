*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
links
    open browser    http://demo.guru99.com/test/newtours/   chrome
    maximize browser window
    ${alllinkscount}=   get element count  xpath://a
    log to console  total links are ${alllinkscount}

    #@{linkitems}    create list


     :FOR   ${i}    IN RANGE    1   ${alllinkscount}
    \   ${linktext}=    get text  xpath:(//a)[${i}]
    \   log to console  ${linktext}


    close browser

