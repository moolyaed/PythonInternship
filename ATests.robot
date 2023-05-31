*** Settings ***
Resource    ../Resources/Operations.robot
Documentation    Test To Verify The Price and Iterate The Product Details Table  

Suite Setup    Open My browser
Suite Teardown    Close All Browsers

*** Test Cases ***
Price Compare
    [Tags]    Regression
    [Setup]    Log To Console    ${Test1_Setup}
    When Select Product
    Then Verify The Price
    [Teardown]    Log To Console    ${Test1_Teardown}

Product Detail Table Iteration
    [Tags]    Regression
    [Setup]    Log To Console    ${Test2_Setup}
    Given Scroll Product Details Into View
    Then Get Text Of Header Shape
    [Teardown]    Log To Console    ${Test2_Teardown}
