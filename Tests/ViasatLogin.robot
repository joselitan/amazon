*** Settings ***
Documentation  Testing successful and failed login
Resource  ../Resources/ViasatApp.robot
Resource  ../Resources/Common.robot
Suite Setup  Insert Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Close
Suite Teardown  Cleanup Testing Data


*** Variables ***
${LOCALE} =     se
${BROWSER} =    chrome
${START_URL} =  https://test.viasat.${LOCALE}

*** Test Cases ***
Valid Login Attempt
    [Documentation]  Customer logs in with valid credentials
    [Tags]  SuccessLogin
    ViasatApp.Go To Viasat
    ViasatApp.Login with account
    ViasatApp.Go To My Pages

Empty Username Field
    [Documentation]  Check error messages on Empty Email Field
    [Tags]  EmptyEmail
    ViasatApp.Go To Viasat
    ViasatApp.Login With Empty Email Field
    ViasatApp.Verify Email Requirement Message

Empty Password Field
    [Documentation]  Check error messages on Empty Password Field
    [Tags]  EmptyPassword
    ViasatApp.Go To Viasat
    ViasatApp.Login With Empty Password Field
    ViasatApp.Verify Password Requirement Message

Invalid Email Format
    [Documentation]  Enters invalid email format
    [Tags]  InvalidEmail
    ViasatApp.Go To Viasat
    ViasatApp.Login With Invalid Email Credential
    ViasatApp.Verify Password Requirement Message

Invalid Login Attempt
    [Documentation]  Enter none existing credentials
    [Tags]   InvalidCredentials
    ViasatApp.Go To Viasat
    ViasatApp.Login With Invalid Credentials
    ViasatApp.Verify Invalid Credential Message




