*** Settings ***
Documentation    Suite description

Resource    /home/ubuntu/Robot/Assignment/Library/Keywords/LoginPageKeywords.robot
Resource    /home/ubuntu/Robot/Assignment/Library/Keywords/HomePageKeywords.robot
Resource    /home/ubuntu/Robot/Assignment/Library/Keywords/MeetingRoomPageKeywords.robot
Library    Selenium2Library

Suite Teardown  Teardown Actions

*** Keywords ***
Teardown Actions
    Click Cancel Booking
    Accept Alert
    Close Browser




*** Test Cases ***
TC_Login
    Given Open Xornet
    And Wait for page load    ${btn_signIn}
    And Enter User Name
    And Enter Password
    When Click Sign In
    And Wait for page load    ${xornet_logo}
    Then Verify Login Success


TC_Click_BookMeetingRoom
    Given Click on workplace support
    When Select Book Meeting Tab
    Then Verify Book Meeting Page    ${tab_book_meeting_room}


TC_Check_Availability
    Given Select Room Capacity    3
    And Select Room    Kafi (502)
    And Select Meeting Interval    day
    When Click on Book Room Button
    Then Verify Expected Text Displayed    ${label_selected_room}   "Selected Room :"

TC_Confirm_Booking
    Given User enters the meeting subject    "Test"
    And Select Meeting Start Date    "11-12-2018"
    And Select Meeting Start Time    "11:00 PM"
    And Select Meeting End Date      "11-12-2018"
    And Select Meeting End Time      "11:15 PM"
    And Click on Book Room Button
    When Book Room and Skip Invite
    Then Verify URL contains my_booking
