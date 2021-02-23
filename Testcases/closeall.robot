*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
CloseAll
    open browser  http://demowebshop.tricentis.com/register     chrome
    maximize browser window
    open browser  https://demo.nopcommerce.com/     chrome
    maximize browser window
    open browser  http://demowebshop.tricentis.com/register     chrome
    maximize browser window
    open browser  https://demo.nopcommerce.com/     chrome
    maximize browser window
    close all browsers