*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN_LINK} =             xpath=.//div[@class='login-container']
${EMAIL_LOSENORD_BUTTON}    xpath=.//app-modal//button[2]

*** Keywords ***

Login link
    Click Element       ${LOGIN_LINK}

Click email losenord
    Click Button        ${EMAIL_LOSENORD_BUTTON}

