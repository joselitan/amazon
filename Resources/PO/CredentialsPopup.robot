*** Settings ***
Library  SeleniumLibrary
Resource  ../Variable.robot
*** Variables ***
#${CUSTOMER_ID}=     set variable
*** Keywords ***
#Actions
Enter credentials
    Input Text  xpath= .//input[@placeholder='Emailadress']  ${USERNAME}
    Input Text  xpath= .//input[@placeholder='Ange lösenord']  ${PASSWORD}

Enter invalid credentials
    Input Text  xpath= .//input[@placeholder='Emailadress']  sigmatest_se_55555@mailinator.com
    Input Text  xpath= .//input[@placeholder='Ange lösenord']  test12344444

Enter Invalid Email address
    Input Text  xpath= .//input[@placeholder='Emailadress']  %&@hot.com

Click Logga in
    Click Button  xpath =.//form/button

Verify customer number
    Wait Until Page Contains  Kundnummer: 10020309

Click On Email Address Field
    Click Element  xpath= .//input[@placeholder='Emailadress']

Click On Password Field
    Click Element  xpath= .//input[@placeholder='Ange lösenord']

Click Activate My Pages Link
    Click Element  xpath= .//div[@class='links']/a[1]

Click Forget Password Link
    Click Element  xpath= .//div[@class='links']/a[2]

#Verify

Verify Email Message
    Wait Until Page Contains  Emailadress krävs

Verify Password Message
    Wait Until Page Contains  Lösenord krävs

Verify Invalid Credential Message
    Wait Until page Contains  Det angivna användarnamnet eller lösenordet verkar vara felaktigt.

Verify Email Must Be Valid
    Wait Until Page Contains  Emailadressen måste vara giltig


