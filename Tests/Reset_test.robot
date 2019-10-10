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
#${SEARCH_TERM} =


*** Test Cases ***
User must sign in to upgrade
    [Documentation]  This is some basic info about the test
    [Tags]  ForgetPassword
    ViasatApp.Go To Viasat
    ViasatApp.Go To Forget Password
    ViasatApp.Verify Button Is Disabled
    ViasatApp.Verify Reset Page Loaded
    ViasatApp.Login With Invalid Email Credential
    ViasatApp.Verify Button Is Enabled
