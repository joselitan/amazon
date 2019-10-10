*** Settings ***
Documentation  Testing add and remove add on products from checkout
Resource  ../Resources/ViasatApp.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/Variable.robot
Suite Setup  Logged In User
#Test Setup  ViasatApp.Login with account
#Test Teardown  End Web Close
Suite Teardown  Log Out And Close Browser

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://test.viasat.se

*** Test Cases ***

Add Product To Check Out
    ViasatApp.Select addon on subscription page
    ViasatApp.View Cart

#Remove Product From Check Out
#    ViasatApp.Remove Product From Checkout
#    ViasatApp.Verify Addon Not Exists