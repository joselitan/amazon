*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
#Actions



#Validation

Verify Reset Page Load
    Wait Until Page Contains  Begär nytt

Verify Confirm Is Disabled
    Element Should Be Disabled  xpath:.//button[@class='blue-btn outline-btn is-sm']

Verify Confirm Is Enabled
    Element Should Be Enabled  xpath:.//button[@class='blue-btn outline-btn is-sm']

Verify Page Loaded
    Element Text Should Be  xpath:.//h1[contains(text(),'Begär nytt lösenord')]  Begär nytt lösenord
