*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/locators.py
Variables    ../testData/testdata.py

*** Keywords ***

Load Browser
    Open Browser    ${site}     ${browser}
    Wait Until Element Is Visible    ${login_title_locator}

