*** Settings ***
Library  SeleniumLibrary
Resource  ViasatApp.robot

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

End Web Close
    Close Browser

Insert Testing Data
   Log  I am setting up the test data...

Cleanup Testing Data
   Log  I am cleaning up the test data...

Close cookie
    [Documentation]  This cookie notice
    Click Button  xpath:.//app-cookie-notice//button

Logged In User
    [Documentation]  required logged in user to continue testing
    Begin Web Test
    ViasatApp.Go To Viasat
    ViasatApp.Login with account
    ViasatApp.Verify Login Successful

Log Out And Close Browser
    [Documentation]  Requires to log out from my pages and close browser
    ViasatApp.Log out from my pages
    End Web Close



#Verify Confirm Button Is Disabled
#    Element Should Be Disabled  xpath=.//button[contains(text(),'Bekräfta')]

#Verify Confirm Button Is Enabled
#    Element Should Be Enabled  xpath=.//button[contains(text(),'Bekräfta')]
