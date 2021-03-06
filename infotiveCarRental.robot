*** Setting ***
Documentation       Information about the Test Suite
Resource            keywords.robot
Library             SeleniumLibrary
Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://rental11.infotiv.net/



*** Test Cases ***


Creating the User
        [Documentation]                 Creating the User
        [Tags]                           Creating User

        Creating User

Login Function
        [Documentation]                Testing Login function
        [Tags]                          Login

        User Login

Login with Invalid Email

        [Documentation]             Testing with invlaid Email
        [Tags]                      Invalid Email

        Login with Invalid Email

Login with Invlaid Password

        [Documentation]             Tesing with invlaid password
        [Tags]                      Invlaid Password

        Login with Invlaid Password

Selecting Date

        [Documentation]             Testing date Function
        [Tags]                      Selecting Date function

        Selecting Date

Booking Car

        [Documentation]             Testing to book a car
        [Tags]                      Booking of a car

        Selecting Date
        User Login
        Booking Car


