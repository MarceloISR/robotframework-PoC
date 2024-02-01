*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Write Time
    [Arguments]    ${locator}    ${time}
    Input Text    ${locator}    ${time}