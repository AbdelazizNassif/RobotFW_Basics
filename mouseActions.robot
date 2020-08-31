*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Variables ***
@{browsers}  chrome  ff
@{searchGoogle}  Selenium  Robot Framework
${title}=  @{searchGoogle}[1] - Google Search

*** Test Cases ***
Test trying mouse actions
    [Tags]    DEBUG
    Open Browser  http://the-internet.herokuapp.com/javascript_alerts  @{browsers}[0]  alias=BrowserA
    Maximize Browser Window
    Mouse Down  xpath://button[contains(text(), 'Click for JS Alert')]
    Sleep  2s
    Mouse Over  link:Elemental Selenium
    Sleep  2s
    Open Context Menu  link:Elemental Selenium
    Sleep  2s
    Go To  http://cookbook.seleniumacademy.com/DragDropDemo.html
    Drag And Drop 	id:draggable 	id:droppable
    Sleep  2s
    Close Browser




