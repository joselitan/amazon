*** Settings ***
Library     SeleniumLibrary
Resource    SubscriptionPage.robot

*** Keywords ***
Click Cart Icon
    Click Element  xpath=.//app-cart/div[@class='cart']

Verify Page Load
    Wait Until Page Contains  Tillvalspaket Danmark

Click Change Button
    [Documentation]  Clicking on "Ändra" button
    Click Element  xpath:.//button[@class='orange-btn outline-btn']

Click Bin Icon
    [Documentation]  Click on bin icon to remove addon product
    Click Element  xpath:.//span[@class='icon-bin icon']

Click Save Button
    [Documentation]
    Click Element  xpath:.//button[@class='orange-btn solid-btn']

Verify Addon Not Exists
    [Documentation]
    Wait Until Page Does Not Contain Element  Tillvalspaket Danmark

Verify Items Added To Cart
    [Documentation]  checking that items has been added to cart icon
     Wait Until Element Is Visible  xpath:.//app-cart//div[@class='icon-cart icon']/following-sibling::div
     Select Package
