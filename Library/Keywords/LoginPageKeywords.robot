*** Settings ***
Documentation    This file contains keywords for login page

Resource    /home/ubuntu/Robot/Assignment/Library/Objects/LoginPageObjects.robot
Resource    /home/ubuntu/Robot/Assignment/TestCases/TestData/LoginPageTestData.robot
Library    Selenium2Library


*** Keywords ***
Open Xornet
    Open Browser    https://xornet.xoriant.com    FireFox

Wait for page load
    [Documentation]  Wait until page loads completely
    [Arguments]   ${element}
    Wait Until Element Is Visible    ${element}    timeout=30

Enter User Name
    Input Text    ${input_username}    ${user_name}

Enter Password
    Input Text    ${input_password}    ${pwd}

Click Sign In
    Click Element    ${btn_signIn}

Verify Login Success
    Title Should Be    Xornet



