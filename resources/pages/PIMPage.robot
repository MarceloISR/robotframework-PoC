*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/PIM_locators.py

*** Variables ***


*** Keywords ***
Create PIM User
    [Arguments]    ${userName}
    Click Element    ${add_button}
    Wait Until Page Contains Element    ${container_section}
    Input Text    ${first_name_field}    ${userName}
    Input Text    ${middle_name_field}    Middle Name
    Input Text    ${last_name_field}    Last Name

    Click Element    ${create_login_details_switch}
    Input Text    ${username_field}    ${userName}
    Input Text    ${password_field}    Abc123@\$
    Input Text    ${confirm_password_field}    Abc123@\$
    
    Click Element    ${employee_save_button}