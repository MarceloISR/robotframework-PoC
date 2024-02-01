*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Write Date 
    [Arguments]    ${locator}    ${date}
    Input Text    ${locator}    ${date}

