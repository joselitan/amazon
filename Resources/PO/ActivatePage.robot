*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
#Actions

Enter Subscription Number

    input text  xpath:.//div[@class='form-container']//input[@placeholder='Kundnummer']  123

Enter Social Security Number

    input text  xpath:.//div[@class='form-container']//input[@placeholder='Personnummer (ÅÅÅÅMMDDXXXX)']  198101012222

Enter Email address

    input text  xpath:.//div[@class='form-container']//input[@placeholder='Emailadress']  Test@test.com

Enter New Password

    # Scroll Element Into View  xpath:.//div[@class='form-container']//input[@id='mat-input-9']
    # Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    # sleep  5sec
    # Press Keys  xpath:.//div[@class='form-container']//input[@id='mat-input-9']  ALT+ARROW_DOWN
    # input text  xpath:.//div[@class='form-container']//input[@id='mat-input-9']  test1234
    input text  xpath:.//input[@id='mat-input-1']  test1234

Re-enter New Password
    #sleep  2sec
    input text  xpath:.//input[@id='mat-input-2']  test1234


#Verificaiton
Verify Confirm Button Is Disabled

    Element Should Be Disabled  xpath=.//button[contains(text(),'Bekräfta')]

Verify Confirm Button Is Enabled

    Element Should Be Enabled  xpath=.//button[contains(text(),'Bekräfta')]