*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
${sleep}    2



*** Test Cases ***
LoginTest

   launchBrowser
   loginToApplication
   closeBrowserKeyword





*** Keywords ***
launchBrowser
   open browser     ${url}   ${browser}
   maximize browser window



loginToApplication
   click link   xpath://a[normalize-space()='Log in']
   sleep    ${sleep}
   input text  id:Email    charankartheek.budama@gmail.com
   sleep    ${sleep}
   input text   id:Password     hello@123
   sleep    ${sleep}
   click element    xpath://button[normalize-space()='Log in']
   sleep    ${sleep}


closeBrowserKeyword
    close browser



