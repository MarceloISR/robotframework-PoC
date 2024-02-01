*** Settings ***
Library    SeleniumLibrary

Variables    ../../locators/Time_HeaderBarLocators.py
Variables    ../../locators/Time_locators.py


*** Keywords ***
### Attendance ###
Go To Punch In Out
    Click Element    ${Attendance_Menu}
    Click Element    ${PunchInOut_submenu}
    Wait Until Page Contains Element    ${PunchIn_container}

Punch Out
    [Arguments]    ${date}=''    ${time}=''    ${note}=''
    IF  ${date}!=''
        Input Text    ${PunchOutDate_field}    ${date}
    END

    IF  ${time}!=''
        Input Text    ${PunchOutTime_field}    ${time}
    END
    
    IF  ${note}!=''
        Input Text    ${PunchOutNote_field}    ${note}
    END
    Click Element    ${PunchOut_Button}
    Wait Until Page Contains Element    ${PunchIn_container}

    

Punch In 
    [Arguments]    ${date}    ${time}    ${note}=''
     IF  ${date}!=''
        Input Text    ${PunchInDate_field}    ${date}
    END

    IF  ${time}!=''
        Input Text    ${PunchInTime_field}    ${time}
    END
    
    IF  ${note}!=''
        Input Text    ${PunchInNote_field}    ${note}
    END
    Click Element    ${PunchIn_Button}
    Wait Until Page Contains Element    ${PunchOut_container}

