*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Mouse Actions
    #Right click
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html       chrome
    maximize browser window
    open context menu   xpath://span[@class='context-menu-one btn btn-neutral']
    sleep   3
    click element  //li[@class='context-menu-item context-menu-icon context-menu-icon-edit']
    sleep   3
    ${alertmessage}=    get alert message
    log to console  alert message displayed is ${alertmessage}
    #double click
    go to   http://testautomationpractice.blogspot.com/
    maximize browser window
    double click element  xpath://button[normalize-space()='Copy Text']
    sleep   3
    ${text}=    get value  xpath://input[@id='field2']
    #${text1}=   get element attribute   xpath://input[@id='field2']     value
    log to console  text from field 2 is ${text}
    #log to console  text from field2 latest is ${text1}
    should be equal  ${text}    Hello World!

    #dragandDrop
    go to  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop  xpath://div[@id='box6']  //div[@id='box106']
    sleep   3




    close browser
