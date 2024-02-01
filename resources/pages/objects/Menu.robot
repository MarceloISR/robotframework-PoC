*** Settings ***
Library    SeleniumLibrary
Variables    ../../locators/menu_locators.py

*** Keywords ***
Wait For the Menu
    Wait Until Element Is Visible    ${menu_container}

Menu Go To
    [Arguments]    ${subMenu}
    Wait For The Menu
    Click Element      ${subMenu}

Menu is Selected
    [Arguments]    ${subMenu}
    Wait For The Menu
    Page Should Contain Element    ${subMenu}//a[contains(@class,'active')]    Menu item is not selected
