*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Variables ***
@{browsers}  chrome  ff
@{searchGoogle}  Selenium  Robot Framework
${title}=  @{searchGoogle}[1] - Google Search

*** Test Cases ***
Test try list variable
    [Tags]    DEBUG
    Open Browser  https://www.google.com/ncr  @{browsers}[0]
    Input Text  xpath://input[@name='q']  @{searchGoogle}[1]
    CLick Element  xpath://div[@class='FPdoLc tfB0Bf']//input[@name='btnK']
    Title Should Be  ${title}
    Close Browser


