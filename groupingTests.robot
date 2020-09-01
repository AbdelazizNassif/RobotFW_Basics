*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Variables ***
@{browsers}  chrome  ff
@{searchGoogle}  Selenium  Robot Framework


*** Test Cases ***
Test Register
    [Tags]    sanity
    Log To Console  This is register test


Test Login
    [Tags]    regression
    Log To Console  This is login test




