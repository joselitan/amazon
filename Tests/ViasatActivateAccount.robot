*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Viasat.robot
Resource  ../Resources/Common.robot
Suite Setup  Insert Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Close
Suite Teardown  Cleanup Testing Data

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://test.viasat.se

*** Test Cases ***
Customer Goes To Activation Page
    [Documentation]  Navigating to activate page
    [Tags]  ActivatePage
    Viasat.Go To Viasat
    Viasat.Go To Activate Account
    Viasat.Verify Button Is Disabled
    Viasat.Enter Activate Account Input
    Viasat.Verify Button Is Enabled