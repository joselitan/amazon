*** Settings ***
Library  SeleniumLibrary

*** Keywords ***




Login link
    Click Element  xpath=.//div[@class='login-container']

Click email losenord
    Click Button  xpath=.//app-modal//button[2]

