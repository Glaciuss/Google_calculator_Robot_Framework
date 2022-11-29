*** Settings ***
Documentation    Simple example using SeleniumLibrary - Test suite
Resource    calc_resources.robot
Test Setup  Set Selenium Speed  0.5
Test Teardown  run keyword if  '${TEST_STATUS}' == 'FAIL'  Recovery from test case failure

*** Test Cases ***
TC001 - Open WebBrowser and google
    open browser to google

TC002 - Search for calculator
    find search field and using to search calculator

TC003 - Simple calculation like 2 + 2 = 4
    click calculator button 2
    click calculator button +
    click calculator button 2
    click calculator button =
    Verify calculated total  4

TC004 - Clear calculator
    clear calculator

TC005 - Second simple calcuation 9 - 8 = 1
    click calculator button 9
    Click calculator button -
    Click calculator button 8
    Click calculator button =
    Verify calculated total  1

TC006 - Clear calculator
    Clear calculator

TC007 - Close browser
    close all browsers
