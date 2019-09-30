*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Click Cart Icon
    Click Element  xpath=.//app-cart/div[@class='cart']

Verify Page Load
    Wait Until Page Contains  Tillvalspaket Danmark