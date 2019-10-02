*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Load
    Go To  ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Bredband

Close cookie
    Click Button  xpath:.//app-cookie-notice//button

Log Out
    #sleep  2sec
    #Wait Until Element Is Visible  xpath:.//div[@class='login-container']
    Wait Until Element Is Enabled  xpath:.//div[@class='login-container']
    Click Element  xpath=.//div[@class='login-container']