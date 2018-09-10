*** Variables ***

${tab_book_meeting_room} =    css=#BookConference
${dd_room_capacity} =    css=#edit-capacity--2
${dd_select_room} =    css=#edit_resource_wrapper
${btn_month} =    xpath=.//*[@id='calendar']/div[1]/div[2]/div/button[1]
${btn_week} =    xpath=.//*[@id='calendar']/div[1]/div[2]/div/button[2]
${btn_day} =    xpath=.//*[@id='calendar']/div[1]/div[2]/div/button[3]
${btn_view_photos} =    xpath=.//*[@id='gallery']/button
${btn_book_room} =    css=#bookmeetingroom
${meeting_time} =    xpath=.//span[text()='11pm']/parent::td/following-sibling::td
${meeting_subject} =    xapth=.//*[@id='edit-subject']
${input_start_date} =    css=#edit-start-date-dateitem-datepicker-popup-2
${input_start_time} =    css=#edit-start-date-dateitem-timepicker-popup-1
${input_end_date} =    css=#edit-end-date-datepicker-popup-2
${input_end_time} =    css=#edit-end-date-timepicker-popup-1
${label_selected_room} =    css=.col-lg-3>strong
${label_booking_details} =    css=.col-sm-12>strong
${lnk_skip_invite} =    xpath=.//*[@id='skip_invite']
${btn_cancel_booking} =    css=#delete
${calender_meeting} =    css=.fc-event-container .fc-content

