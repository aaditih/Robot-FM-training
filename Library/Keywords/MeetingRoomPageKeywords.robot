*** Settings ***
Documentation    This file contains keywords for login page

Resource    /home/ubuntu/Robot/Assignment/Library/Objects/MeetingRoomPageObjects.robot
Library    Selenium2Library


*** Keywords ***
#Click On Book Meeting Room
#    Click Element    ${tab_book_meeting_room}

Select Room Capacity
    [Arguments]   ${capacity}
    Wait Until Element Is Visible    ${btn_book_room}    timeout=30
    Click Element    ${dd_room_capacity}
    Select From List by Value    ${dd_room_capacity}    ${capacity}

Select Room
    [Arguments]   ${room_name}
    Wait Until Element Is Enabled    ${dd_select_room}    timeout=30
    Click Element    ${dd_select_room}
    Select From List by Label    ${dd_select_room}    ${room_name}

Select Meeting Interval
    [Arguments]   ${interval}
    Wait Until Element Is Enabled    ${btn_day}    timeout=30
    Run Keyword If    "${interval}" == "day"    Click Element    ${btn_day}
    Run Keyword If    "${interval}" == "week"    Click Element    ${btn_week}
    Run Keyword If    "${interval}" == "month"    Click Element    ${btn_month}

Click on Book Room Button
    wait until element is visible    ${btn_view_photos}    timeout=30
    Click Element    ${btn_book_room}

Verify Expected Text Displayed
    [Arguments]    ${element}    ${text}
    Element Text Should Be    ${element}    ${text}

User enters the meeting subject
    [Arguments]    ${subject}
    Input Text    ${meeting_subject}    ${subject}

Select Meeting Start Date
    [Arguments]    ${start_date}
    Input Text    ${input_start_date}    ${start_date}

Select Meeting End Date
    [Arguments]    ${end_date}
    Input Text    ${input_end_date}    ${end_date}

Select Meeting Start Time
    [Arguments]    ${start_time}
    Input Text    ${input_start_time}    ${start_time}

Select Meeting End Time
    [Arguments]    ${end_time}
    Input Text    ${input_end_time}    ${end_time}

Book Room and Skip Invite
    Click Element    ${lnk_skip_invite}

Verify URL contains my_bookings
    Location Should Contain    my_booking

Select Meeting on Calender
    Click Element    ${calender_meeting}

Click Cancel Booking
    Click Element    ${btn_cancel_booking}

Accept Alert
    Handle Alert    ACCEPT