*** Settings ***
Library    SeleniumLibrary
Variables    ../testData/testdata.py
Variables    ../locators/locators.py
Variables    ../locators/menu_locators.py

*** Variables ***

*** Keywords ***
Login In
    [Arguments]    ${username}=''    ${password}=''
    ${user_val} =   Set Variable    ''
    IF  ${username} == ''
        ${user_val} =    Set Variable    ${username_data}
    ELSE
        ${user_val} =    Set Variable    ${username}
    END

    ${passw_val} =   Set Variable    ''
    IF  ${password} == ''
        ${passw_val} =    Set Variable    ${password_data}
    ELSE
        ${passw_val} =    Set Variable    ${password}
    END
    
    Input Text    ${username_locator}    ${user_val}
    Input Password    ${password_locator}    ${passw_val}
    Click Element    ${login_button_locator}
    Wait Until Element Is Visible    ${menu_container}

Verify Profile is Displayed
    Page Should Contain Element    ${profile_locator}    'The profile button is not displayed'