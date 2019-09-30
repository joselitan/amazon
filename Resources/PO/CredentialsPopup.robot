*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${CUSTOMER_ID}=     set variable
*** Keywords ***
#Actions
Enter credentials
    Input Text  xpath=.//app-modal//input[@placeholder='Emailadress']  sigmatest_se_10020309@mailinator.com
    Input Text  xpath=.//app-modal//input[@placeholder='Ange lösenord']  test1234

Enter Invalid Email address
    Input Text  xpath=.//app-modal//input[@placeholder='Emailadress']  %&@hot.com

Click Logga in
    Click Button  xpath=.//form/button

Verify customer number
    Wait Until Page Contains  Kundnummer: 10020309

Click On Email Address Field
    Click Element  xpath=.//app-modal//input[@placeholder='Emailadress']


Click On Password Field
    Click Element  xpath=.//app-modal//input[@placeholder='Ange lösenord']

Click Activate My Pages Link
    Click Element  xpath=.//app-login-viasat//div[@class='links']/a[1]

#Verify

Verify Email Message
    Wait Until Page Contains  Emailadress krävs

Verify Password Message
    Wait Until Page Contains  Lösenord krävs

Verify Email Must Be Valid
    Wait Until Page Contains  Emailadressen måste vara giltig
