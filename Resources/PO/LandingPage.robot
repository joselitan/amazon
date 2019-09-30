*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Erbjudande

Close cookie
    Click Button  xpath:.//app-cookie-notice//button

Log Out
    Click Element  xpath=.//div[@class='login-container']