*** Settings ***
Documentation    This file contains keywords for home page

Resource    /home/ubuntu/Robot/Assignment/Library/Objects/HomePageObjects.robot
Resource    /home/ubuntu/Robot/Assignment/Library/Objects/LoginPageObjects.robot
Resource    /home/ubuntu/Robot/Assignment/Library/Objects/MeetingRoomPageObjects.robot
Library    Selenium2Library


*** Keywords ***
Click on workplace support
    Click Element    ${link_workplace_support}

Select Book Meeting Tab
    Click Element    ${link_book_meeting_room}

Verify Book Meeting Page
    [Arguments]   ${element}
    Wait Until Element Is Visible    ${element}    timeout=30
    Title Should Be    Book Meeting Room | Xornet