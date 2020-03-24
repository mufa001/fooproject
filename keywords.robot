*** Settings ***
Library                 SeleniumLibrary

*** Keywords ***

Begin Web Test

        Open Browser                   about:blank   ${BROWSER}
        Maximize Browser Window
        Load Page
        Verify Page Loaded
Load Page
        Go To                                        ${URL}

Verify Page Loaded
        Wait Until Page Contains        Infotiv Car Rental

End Web Test

         Close Browser

Creating User

        Click Button                    id:createUser
        Input Text                      id:name             Muhammad
        Input Text                      id:last             Farooqi
        Input Text                      id:phone            0739970228
        Input Text                      id:emailCreate      muhammad.farooqi@iths.se
        Input Text                      id:confirmEmail     muhammad.farooqi@iths.se
        Input Text                      id:passwordCreate   Infotiv786
        Input Text                      id:confirmPassword  Infotiv786
        Click Button                    id:create


User Login

        Element Should Be Visible       id:userInfoTopBottom
        Input Text                      id:email            muhammad.farooqi@iths.se
        Input Text                      id:password         Infotiv786
        Sleep                           3s
        Click Button                    id:login


Login with Invalid Email

        Input Text                      id:email            ghazniali@gmail.net
        Input Text                      id:password         Infotive786
        Sleep                           5s
        Click Button                    id:login
        Element Should Be Visible       id:signInError

Login with Invlaid Password

        Input Text                      id:email            muhammad.farooqi@iths.se
        Input Text                      id:password         Infotiv78612
        Sleep                           5s
        Click Button                    id:login
        Element Should Be Visible       id:signInError

Selecting Date

        Click Element                        id:start
        Press Keys                           id:start               {03/28}
        Press Keys                           id:end                 {03/30}
        Sleep                                3s
        Click Button                        id:continue

Booking Car

        Click Button                         xpath://*[@id="ms-list-1"]/button
        Select Checkbox                      id:ms-opt-1
        Click Button                         xpath://*[@id="ms-list-2"]/button
        Select Checkbox                      id:ms-opt-6
        Click Element                        id:rightpane
        Sleep                                2s
        Click Element                        id:carSelect1
        ${pickup_date} =                    Get Text                id:startDate
        Should Be Equal                     ${pickup_date}          Pickup date: 2020-03-28
        ${return_date} =                    Get Text                id:endDate
        Should Be Equal                     ${return_date}          Return date: 2020-03-30
        Input Text                          id:cardNum              1234234534564567
        Input Text                          id:fullName             M Farooqi
        Select From List By Index            xpath://*[@id="confirmSelection"]/form/select[1]    2
        Select From List By Index            xpath://*[@id="confirmSelection"]/form/select[2]    5
        Input Text                           id:cvc               786
        Click Button                         id:confirm
        Wait Until Page Contains             now ready for pickup








