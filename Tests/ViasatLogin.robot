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
User successfully logs in
    [Documentation]  Customer logs in with valid credentials
    [Tags]  Success Login
    Viasat.Go To Viasat
    Viasat.Login with account
    Viasat.Go To My Pages

Verify Error Messages On Empty Email Field
    [Documentation]  Check error messages on Empty Email Field
    [Tags]  Empty Email
    Viasat.Go To Viasat
    Viasat.Login With Empty Email Field
    Viasat.Verify Email Requirement Message

Verify Error Messages On Empty Password Field
    [Documentation]  Check error messages on Empty Password Field
    [Tags]  Empty Password
    Viasat.Go To Viasat
    Viasat.Login With Empty Password Field
    Viasat.Verify Password Requirement Message

Verify Error Message With Invalid email
    [Documentation]  Check error messages on empty fields
    [Tags]  InvalidEmail
    Viasat.Go To Viasat
    Viasat.Login With Invalid Email Credential
    Viasat.Verify Password Requirement Message




