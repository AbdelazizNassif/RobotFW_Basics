*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Variables ***
@{browsers}  chrome  ff
@{searchGoogle}  Selenium  Robot Framework
${title}=  @{searchGoogle}[1] - Google Search

*** Test Cases ***
Test trying radio buttons operations
    [Tags]    DEBUG
    Open Browser  https://www.sugarcrm.com/au/request-demo/marketing-automation/  @{browsers}[0]  alias=BrowserA
    Maximize Browser Window
    Scroll Element Into View  //input[@id='doi1']
    Page Should Contain Radio Button  //input[@id='doi0']
    Page Should Not Contain Radio Button  //input[@id='NotExistent']
    Radio Button Should Not Be Selected  doi
    Select Radio Button  doi  1
    Sleep  4s
    Select Radio Button  doi  0
    Sleep  4s
    Close Browser




