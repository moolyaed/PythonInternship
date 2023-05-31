*** Settings ***
Resource    ..//Locators/Variables.robot
Resource    ..//Resources/Importfiles.robot

*** Keywords ***
Open My browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    2

Select Product
    Click Element    //*[text()='Don't Change']
    Click Element    ${Today's_Deal}
    Click Element    ${ThirdDeal}

Verify The Price
    ${Actual_Price}=    Get Element Attribute    ${Price}    text
    Should Be Equal    ${Expected_Price}    ${Actual_Price}

Scroll Product Details Into View
    Scroll Element Into View    ${ProductDetails}
    Click Element    ${ProductDetails}

Get Text Of Header Shape 
    ${End}=    Get Count    ${Table}    tr
    FOR    ${i}    IN RANGE    0    ${End}    
        ${Header_Text}=    Get Text    (//th[@class='a-color-secondary a-size-base prodDetSectionEntry' ])[${i}]
        IF    ${Header_Text} == ${Shape}
            ${Body_Text}=    Get Text    (//th[@class='a-color-secondary a-size-base prodDetSectionEntry' ])[${i}]//following-sibling::td[@class='a-size-base prodDetAttrValue']
        END
        Log To Console    ${Body_Text}
        
    END
    