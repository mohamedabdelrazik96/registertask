*** Settings ***
Documentation  register new accounts
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify that register new accounts
  [Documentation]  this is some basic info about the whole suite
  [Tags]  Smoke
  Open Browser  http://magento-demo.lexiconn.com  chrome
  maximize browser window
  click element  //span[@class='label'][contains(.,'Account')]
  click element  //a[@title='Register']
  input text  //input[@id='firstname']   mohamed
  input text  //input[@id='lastname']  abdelrazik
  input text  //input[@id='email_address']   mohamed1@test.com
  input password  //input[@id='password']  1234567
  input password  //input[@id='confirmation']  1234567
  click element  //input[@id='is_subscribed']
  click button  //button[.='Register']
  wait until page contains  Thank you for registering with Madison Island.
  log  "Done account created"
  sleep  5s
  Close Browser

*** Keywords ***
