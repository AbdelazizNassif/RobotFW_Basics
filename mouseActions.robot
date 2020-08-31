*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Variables ***
@{browsers}  chrome  ff
@{searchGoogle}  Selenium  Robot Framework
${title}=  @{searchGoogle}[1] - Google Search

*** Test Cases ***
Test trying dropdown list
    [Tags]    DEBUG
    Open Browser  http://the-internet.herokuapp.com/javascript_alerts  @{browsers}[0]  alias=BrowserA
    Maximize Browser Window
    Click Element  xpath://button[contains(text(), 'Click for JS Alert')]
    Alert Should Be Present
    Sleep  2s
    Click Element  xpath://button[contains(text(), 'Click for JS Confirm')]
    Sleep  2s
    Handle Alert 	action=DISMISS
    Click Element  xpath://button[contains(text(), 'Click for JS Prompt')]
    Sleep  2s
    Input Text Into Alert  textIntoAlert  action=ACCEPT
    Sleep  2s
    Close Browser




