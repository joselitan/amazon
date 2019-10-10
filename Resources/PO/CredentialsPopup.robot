*** Settings ***
Library  SeleniumLibrary
Resource  ../Variable.robot
*** Variables ***
${USERNAME_FIELD} =         xpath= .//input[@placeholder='Emailadress']
${PASSWORD_FIELD} =         xpath= .//input[@placeholder='Ange lösenord']
${LOGIN_BUTTON} =           xpath =.//form/button
${ACTIVATE_ACCOUNT_LINK}    xpath= .//div[@class='links']/a[1]
${FORGOT_PASSWORD_LINK}     xpath= .//div[@class='links']/a[2]
*** Keywords ***
#Actions
Enter credentials
    Input Text  ${USERNAME_FIELD}  ${USERNAME}
    Input Text  ${PASSWORD_FIELD}  ${PASSWORD}

Enter invalid credentials
    Input Text  ${USERNAME_FIELD}  sigmatest_se_55555@mailinator.com
    Input Text  ${PASSWORD_FIELD}  test12344444

Enter Invalid Email address
    Input Text  ${USERNAME_FIELD}  %&@hot.com

Click Logga in
    Click Button  ${LOGIN_BUTTON}

Verify customer number
    Wait Until Page Contains  Kundnummer: 10020309

Click On Email Address Field
    Click Element  ${USERNAME_FIELD}

Click On Password Field
    Click Element  ${PASSWORD_FIELD}

Click Activate My Pages Link
    Click Element  ${ACTIVATE_ACCOUNT_LINK}

Click Forget Password Link
    Click Element  ${FORGOT_PASSWORD_LINK}


#Verify

Verify Email Message
    Wait Until Page Contains  Emailadress krävs

Verify Password Message
    Wait Until Page Contains  Lösenord krävs

Verify Invalid Credential Message
    Wait Until page Contains  Det angivna användarnamnet eller lösenordet verkar vara felaktigt.

Verify Email Must Be Valid
    Wait Until Page Contains  Emailadressen måste vara giltig


