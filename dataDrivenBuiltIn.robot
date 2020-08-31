*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Library  BuiltIn
Library  OperatingSystem

Suite Setup     Start the test suite
Suite Teardown   end These tests
Test Template  Invalid Login Scenarios
*** Variables ***
${userNme_box}=  xpath://input[@id='user-name']
${pword_box}=  xpath://input[@id='password']
${login_btn}=  xpath://input[@id='login-button']
${EMPTY}=
${error_text}  xpath://h3


*** Test Cases ***                      USERNAME         PASSWORD         ERRORMSG
Verify Login Fails - Empty Credits      ${EMPTY}         ${EMPTY}         Epic sadface: Username is required
Verify Login Fails - Wrong Password     standard_user    wrongPass        Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Wrong UserName     standard_us      secret_sauce     Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Locked Out User    locked_out_user  secret_sauce     Epic sadface: Sorry, this user has been locked out.


*** Keywords ***
Start the test suite
    Open Browser  https://www.saucedemo.com/  chrome
    Maximize Browser Window

end These tests
    Close Browser

Invalid Login Scenarios
    [Arguments]  ${user_name}  ${password}  ${err_msg}
    Input Text  ${userNme_box}  ${user_name}
    Input Text  ${pword_box}  ${password}
    Click Element  ${login_btn}
    Page Should Contain Element  ${error_text}
    Element Should Contain  ${error_text}  ${err_msg}






