*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/ViasatApp.robot
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
    ViasatApp.Go To Viasat
    ViasatApp.Go To Activate Account
    ViasatApp.Verify Button Is Disabled
    ViasatApp.Enter Activate Account Input
    ViasatApp.Verify Button Is Enabled