*** Settings ***

*** Variables ***
${MY_VARIABLE}  =  Hello there

*** Test Cases ***
Set a variable in the test case
    [Tags]  current
    ${my_new_variable} =  Set variable  My new variable
    Log  ${my_new_variable}

Variable demonstration
    Log  ${MY_VARIABLE}

*** Keywords ***
