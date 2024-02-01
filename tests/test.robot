*** Settings ***
Documentation    Page object in Robot Framework

Library     SeleniumLibrary

Resource    ../resources/pages/LoginPage.robot
Resource    ../resources/pages/AdminPage.robot
Resource    ../resources/pages/objects/Menu.robot
Resource    ../resources/pages/PIMPage.robot
Resource    ../resources/pages/Time/TimePage.robot

Resource    ../resources/common/common.robot

Variables    ../resources/libraries/common.py

# Variables    ../resources/locators/locators.py
# Variables    ../resources/testData/testdata.py


#Test Setup    Load Browser
#Test Teardown    Close Browser


*** Variables ***

# ${my-variable}    my test variable
# @{LIST}    test1    test2    test3
# &{DICT}    username=marcelo    password=123

*** Test Cases ***
Testing PoC
    [Documentation]    Open and login to opensource-demo.orangehrmlive.com
    [Tags]    smoke_test
    Load Browser
    Login In
    Verify Profile is Displayed
    ### GO TO PIM MENU ###
    Menu.Menu Go To    ${Menu_Pim}
    ${userName} =    Generate Random    MISR
    PIMPage.Create PIM User    ${userName}
    
    Menu.Menu Go To    ${Menu_Admin}
    Menu.Menu is Selected    ${Menu_Admin}
    AdminPage.Select Row From Table With   ${userName},ESS,${userName} Last Name,Enabled

    Menu.Menu Go To    ${Menu_Time}
    
    SeleniumLibrary.Close Browser
    SeleniumLibrary.Close Browser

# Login with correct Username and Password
#     [Documentation]   robot framework example
#     [Tags]    demo
#     Open Browser    url=https://the-internet.herokuapp.com/login    browser=chrome
#     Input Text    username    tomsmith
#     Input Text    password    SuperSecretPassword!
#     Click Button     class:radius
#     Element Should Contain    id=flash    You logged into a secure area!
#     Click Link    Logout
#     Close Browser

# Add Tasks And Set To Complete
#     [Tags]    demo
#     Open Browser    url=https://todomvc.com/examples/angularjs/#/    browser=chrome
#     Input Text    class:new-todo    Complete Robot Framework Training
#     Press Keys    class:new-todo    RETURN
#     Input Text    class:new-todo    Write Automated Tests
#     Press Keys    class:new-todo    RETURN
#     Input Text    class:new-todo    Take a nap
#     Press Keys    class:new-todo    RETURN
#     Element Text Should Be    class:todo-count    3 items left
#     Click Element    xpath: //*[contains(text(), "Complete Robot Framework Training")]/../input
#     Element Text Should Be    class:todo-count    2 items left
#     Click Element    xpath: //*[contains(text(), "Write Automated Tests")]/../input
#     Element Text Should Be    class:todo-count    1 item left
#     Click Element    xpath: //*[contains(text(), "Take a nap")]/../input
#     Element Text Should Be    class:todo-count    0 items left
#     Close Browser


*** Keywords ***
Init
    Load Browser
    # LoginIn