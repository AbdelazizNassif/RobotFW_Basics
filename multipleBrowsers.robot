*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Variables ***
@{browsers}  chrome  ff
@{searchGoogle}  Selenium  Robot Framework
${title}=  @{searchGoogle}[1] - Google Search

*** Test Cases ***
Test trying multiple browsers
    [Tags]    DEBUG
    Open Browser  https://www.google.com/ncr  @{browsers}[0]  alias=BrowserA
    Maximize Browser Window
    Open Browser  https://www.google.com/ncr  @{browsers}[1]  alias=BrowserB
    Maximize Browser Window
    &{aliases} 	Get Browser Aliases
    Log 	${aliases.BrowserA}
    Log 	${aliases.BrowserB}

    @{browser_ids}= 	Get Browser Ids
    Log  @{browser_ids}[0]
    Log  @{browser_ids}[1]
    # 1 chrome 2 ffox
    #Switch Browser  2

    # 0 chrome 1 ffox
    Switch Browser  @{browser_ids}[1]

    Go To  https://www.facebook.com/
    Sleep  4s
    Close All Browsers




