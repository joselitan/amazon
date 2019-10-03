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
#${SEARCH_TERM} =


*** Test Cases ***
Successful login
    [Tags]  success
    Given Go To Viasat
    When Login with account
    Then Go To My Pages

Empty Email Field
    [Tags]  emptyEmail
    Given Go To Viasat
    When Login With Empty Email Field
    Then Verify Email Requirement Message

Empty Password Field
    [Tags]  emptyPassword
    Given Go To Viasat
    When Login With Empty Password Field
    Then Verify Password Requirement Message

Invalid Email
    [Tags]  invalidEmail
    Given Go To Viasat
    When Login With Invalid Email Credential
    Then Verify Email Must Be Valid

Invalid credentials
    [Tags]  InvalidCredentials
    Given Go To Viasat
    When Login With Invalid Credentials
    Then Verify Invalid Credential Message