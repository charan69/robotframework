*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
launchBrowserWithArgumentsAndReturnValue
   [Arguments]  ${appurl}   ${appbrowser}
   open browser  ${appurl}  ${appbrowser}
   maximize browser window
   ${title}=    get title
   [Return]  ${title}


launchBrowserWithArguments
   [Arguments]  ${appurl}   ${appbrowser}
   open browser  ${appurl}  ${appbrowser}
   maximize browser window

