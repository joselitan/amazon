*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/LoginPopup.robot
Resource  ../Resources/PO/CredentialsPopup.robot
Resource  ../Resources/PO/MyPage.robot
Resource  ../Resources/PO/SubscriptionPage.robot
Resource  ../Resources/PO/AddToCartPage.robot
Resource  ../Resources/PO/ActivatePage.robot
Resource  ../Resources/PO/ResetPage.robot
Resource  ../Resources/Common.robot

*** Keywords ***

Go To Viasat
    [Documentation]  Goes to Viasat Page xxx.viasat.se

    LandingPage.Load
    LandingPage.Verify Page Loaded
    Common.Close cookie

Login with account
    [Documentation]  Open login popup to login
    LoginPopup.Login link
    LoginPopup.Click email losenord
    CredentialsPopup.Enter credentials
    CredentialsPopup.Click Logga in

Login With Empty Email Field
    [Documentation]  Just clicking on credential fields without entering credentials
    LoginPopup.Login link
    LoginPopup.Click email losenord
    CredentialsPopup.Click On Email Address Field

Login With Empty Password Field
    [Documentation]  Just clicking on password
    LoginPopup.Login link
    LoginPopup.Click email losenord
    CredentialsPopup.Click On Password Field

Login With Invalid Email Credential
    [Documentation]  Enter invalid email and verify error message
    LoginPopup.Login link
    LoginPopup.Click email losenord
    CredentialsPopup.Enter Invalid Email address

Login With Invalid Credentials
    [Documentation]  Enter invalid Crentials and verify error message
    LoginPopup.Login link
    LoginPopup.Click email losenord
    CredentialsPopup.Enter invalid credentials


Go To Activate
    [Documentation]  Open login popup to login
    LoginPopup.Login link
    LoginPopup.Click email losenord
    CredentialsPopup.Click Activate My Pages Link

Go To Forget Password
    [Documentation]  Goes to Forget password page
    LoginPopup.Login link
    LoginPopup.Click email losenord
    CredentialsPopup.Click Forget Password Link

Enter Activate Account Input
    ActivatePage.Enter Subscription Number
    ActivatePage.Enter Social Security Number
    ActivatePage.Enter Email address
    ActivatePage.Enter New Password
    ActivatePage.Re-enter New Password

Go to My Pages
    [Documentation]  Verifies that My Pages is reached
    MyPage.Verify Page Loaded

Select addon on subscription page
    [Documentation]  Goes to my subscription and selects package for upgrade
    SubscriptionPage.My Subscription
    SubscriptionPage.Verify Page Loaded
    SubscriptionPage.Audit and Change
    SubscriptionPage.Select Package  2
    SubscriptionPage.Save Changes

View Cart
    [Documentation]  Goes to Check out
    AddToCartPage.Verify Items Added To Cart
    AddToCartPage. Click Cart Icon
    #AddToCartPage.Verify Page Load

Remove Product From Checkout
    AddToCartPage.Click Change Button
    AddToCartPage.Click Bin Icon
    AddToCartPage.Click Save Button

Log out from my pages
    [Documentation]  Logs out
    LandingPage.Log Out
    LandingPage.Verify Page Loaded

Go To Activate Account
    [Documentation]  Link to activate page site
    LoginPopup.Login link
    LoginPopup.Click email losenord
    CredentialsPopup.Click Activate My Pages Link


Verify Email Requirement Message
    CredentialsPopup.Verify Email Message

Verify Password Requirement Message
    CredentialsPopup.Verify Password Message

Verify Invalid Credential Message
    CredentialsPopup.Verify Invalid Credential Message

Verify Email Is Invalid
    CredentialsPopup.Verify Email Must Be Valid

Verify Reset Page Loaded
    ResetPage.Verify Page Loaded

Verify Button Is Disabled
    ResetPage.Verify Confirm Is Disabled

Verify Button Is Enabled
    ResetPage.Verify Confirm Is Enabled

Verify Login Successful
    MyPage.Verify Page Loaded







