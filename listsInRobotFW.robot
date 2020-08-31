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
    Open Browser  http://the-internet.herokuapp.com/dropdown  @{browsers}[0]  alias=BrowserA
    Maximize Browser Window
    Page Should Contain List  xpath://select[@id='dropdown']
    Select From List By Index  xpath://select[@id='dropdown']  2
    sleep  3s
    Select From List By Value  xpath://select[@id='dropdown']  1
    sleep  3s
    Close Browser




