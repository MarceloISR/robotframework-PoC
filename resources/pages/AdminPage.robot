*** Settings ***
Library    re
Library    SeleniumLibrary
Library    ../libraries/common.py
Variables    ../locators/admin_locators.py

*** Variables ***
# &{DICT}    username=1    user_role=2    employee_name=3    status=4    actions=5


*** Keywords ***
Select Row From Table With
    [Arguments]    ${table}
    ${listItems}=    Split     ,    ${table}
    ${result}=    Get Row Selector    ${table_locator}     ${listItems}
    Click Element   ${result}
    Scroll Element Into View    ${result}
    Wait Until Page Contains Element    ${result}


Edit Row From Table with
    [Arguments]    ${table}
    ${listItems}=    Split     ,    ${table}
    ${selector} =     Get Row Selector    ${table_locator}    ${listItems}


