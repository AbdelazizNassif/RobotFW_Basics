*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Variables ***
&{browsers}  gchrome=chrome  ffox=ff
&{searchGoogle}  fs=Selenium  ss=Robot Framework
${current}=  fs
${title}=  ${searchGoogle.${current}} - Google Search

*** Test Cases ***
Test try dictionary variable
    [Tags]    DEBUG
    Open Browser  https://www.google.com/ncr  ${browsers.gchrome}
    Input Text  xpath://input[@name='q']  ${searchGoogle.${current}}
    CLick Element  xpath://div[@class='FPdoLc tfB0Bf']//input[@name='btnK']
    Title Should Be  ${title}
    Close Browser


