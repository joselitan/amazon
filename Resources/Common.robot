*** Settings ***
Library  SeleniumLibrary

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
