*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/resources.robot



*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
${sleep}    2



*** Test Cases ***
LoginTest

   launchBrowserWithArguments    ${url}   ${browser}
   loginToApplication
   closeBrowserKeyword





*** Keywords ***




loginToApplication
   click link   xpath://a[normalize-space()='Log in']
   sleep    ${sleep}
   input text  id:Email    charankartheek.budama@gmail.com
   sleep    ${sleep}
   input text   id:Password     hello@123
   sleep    ${sleep}
   click element    xpath://input[@value='Log in']
   sleep    ${sleep}


closeBrowserKeyword
    close browser