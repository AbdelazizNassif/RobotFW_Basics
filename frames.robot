*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary


*** Variables ***
@{browsers}  chrome  ff
@{searchGoogle}  Selenium  Robot Framework
${title}=  @{searchGoogle}[1] - Google Search

*** Test Cases ***
Test trying frames
    [Tags]    DEBUG
    Open Browser  http://the-internet.herokuapp.com/iframe  @{browsers}[0]  alias=BrowserA
    Maximize Browser Window
    Select Frame 	id:mce_0_ifr
    Input Text  //body[@id='tinymce']  dealing with frames in robot framework
    Unselect Frame
    #This will fail
    #Input Text  //body[@id='tinymce']  dealing with frames in robot framework 222
    Page Should Contain  An iFrame containing the TinyMCE WYSIWYG Editor
    Close Browser




