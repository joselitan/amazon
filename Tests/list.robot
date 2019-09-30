*** Settings ***

*** Variables ***
@{MY_VARIABLES} =  Hello there  This is value 2  I am item 3


*** Test Cases ***
Variable demonstration
    #Log  @{MY_VARIABLES}
    Log  @{MY_VARIABLES}[0]
    Log  @{MY_VARIABLES}[1]
    Log  @{MY_VARIABLES}[2]

Variable demonstration 2
    @{my_list_variable} =  create list  Item1  Item2  Item3
    Log  @{my_list_variable}[0]
    Log  @{my_list_variable}[1]
    Log  @{my_list_variable}[2]