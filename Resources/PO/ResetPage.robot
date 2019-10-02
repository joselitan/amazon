*** Settings ***
Library  SeleniumLibrary

*** Keywords ***


#Validation

Verify Reset Page Load
    Wait Until Page Contains  Begär nytt

#Verify Confirm Is Disabled
#    Element Should Be Disabled  xpath:.//button[@class='blue-btn outline-btn is-sm']

#Verify Confirm Is Enabled
#    Element Should Be Enabled  xpath:.//button[@class='blue-btn outline-btn is-sm']
