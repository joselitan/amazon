*** Settings ***
Documentation  Testing successful and failed login
Resource  ../Resources/Viasat.robot
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
    Viasat.Go To Viasat
    Viasat.Login with account
    Viasat.Go To My Pages


Empty Username Field
    [Documentation]  Check error messages on Empty Email Field
    [Tags]  EmptyEmail
    Viasat.Go To Viasat
    Viasat.Login With Empty Email Field
    Viasat.Verify Email Requirement Message

Empty Password Field
    [Documentation]  Check error messages on Empty Password Field
    [Tags]  EmptyPassword
    Viasat.Go To Viasat
    Viasat.Login With Empty Password Field
    Viasat.Verify Password Requirement Message

Invalid Email Format
    [Documentation]  Enters invalid email format
    [Tags]  InvalidEmail
    Viasat.Go To Viasat
    Viasat.Login With Invalid Email Credential
    Viasat.Verify Password Requirement Message

Invalid Login Attempt
    [Documentation]  Enter none existing credentials
    [Tags]   InvalidCredentials
    Viasat.Go To Viasat
    Viasat.Login With Invalid Credentials
    Viasat.Verify Invalid Credential Message




