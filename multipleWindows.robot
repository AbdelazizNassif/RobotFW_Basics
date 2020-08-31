*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Variables ***
@{browsers}  chrome  ff
@{searchGoogle}  Selenium  Robot Framework
${title}=  @{searchGoogle}[1] - Google Search

*** Test Cases ***
Test trying multiple Windows
    [Tags]    DEBUG
    Open Browser  https://www.salesforce.com/  @{browsers}[0]  alias=BrowserA
    Maximize Browser Window
    Click Element  xpath:/html/body/div[3]/div[2]/div/div/div/div[6]/div[1]/div[1]/div[3]/div/div[1]/div/a/span

    @{windowHandles}= 	Get Window Handles
    sleep  4s
    @{windowIDs}=  Get Window Identifiers
    sleep  4s
    @{windowNames}= 	 Get Window Names
    Log  @{windowNames}[0]
    Log  @{windowNames}[1]
    sleep  4s
    @{windowTitles}=  Get Window Titles
    Log  @{windowTitles}[0]
    Log  @{windowTitles}[1]
    sleep  4s
    Close Browser




