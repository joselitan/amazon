*** Settings ***
Documentation  Testing add and remove add on products from checkout
Resource  ../Resources/Viasat.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/Variable.robot
Suite Setup  Logged In User
#Test Setup  Viasat.Login with account
#Test Teardown  End Web Close
Suite Teardown  Log Out And Close Browser

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.viasat.se

*** Test Cases ***

Add Product To Check Out
    Viasat.Select package or addon on subscription page
    Viasat.Add Product to Cart

Remove Product From Check Out
    Viasat.Remove Product From Checkout
    #Viasat.Verify Addon Not Exists