*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Variables ***
@{browsers}  chrome  ff
@{searchGoogle}  Selenium  Robot Framework
${title}=  @{searchGoogle}[1] - Google Search

*** Test Cases ***
Test trying checkboxes operations
    [Tags]    DEBUG
    Open Browser  http://the-internet.herokuapp.com/checkboxes  @{browsers}[0]  alias=BrowserA
    Maximize Browser Window
    Page Should Contain Checkbox  //form[@id='checkboxes']//input[2]
    Page Should Not Contain Checkbox  //form[@id='checkboxes']//input[3]
    Checkbox Should Be Selected   //form[@id='checkboxes']//input[2]
    Select Checkbox  //form[@id='checkboxes']//input[2]
    Unselect Checkbox  //form[@id='checkboxes']//input[1]
    Checkbox Should Be Selected   //form[@id='checkboxes']//input[2]
    Checkbox Should Not Be Selected  //form[@id='checkboxes']//input[1]

    Close Browser




