*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/ViasatApp.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/Variable.robot
Suite Setup  Insert Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Close
Suite Teardown  Cleanup Testing Data

*** Variables ***
${BROWSER} =            chrome
${START_URL} =          https://test.viasat.se
${LOGIN_EMAIL} =        jlmm83@hotmail.com
${LOGIN_PASSWORD} =     test1234

*** Test Cases ***


User must sign in to upgrade
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    ViasatApp.Go To Viasat
    ViasatApp.Login with account
    ViasatApp.Go To My Pages
    ViasatApp.Select addon on subscription page
    ViasatApp.View Cart
    ViasatApp.Log out from my pages

