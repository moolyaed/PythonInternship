*** Variables ***
${url}                https://www.amazon.com/
${browser}            chrome

${Test1_Setup}        Price Compare Test Setup Successfully
${Test1_Teardown}     Price Compare Test Teardown Successfully
${Test2_Setup}        Product Detail Table Iteration Test Setup Successfully
${Test2_Teardown}     Product Detail Table Iteration Test Teardown Successfully

${Today's_Deal}       //a[text()="Today's Deals"]
${ThirdDeal}          (//div[@class='title--3qM6_ title--X01QH titleAnchor--2TGNn doubleLinesTitle--ATRHO'])[3]
${Price}              (//span[@class='a-offscreen'])[2]
${Expected_Price}     $42.99

${ProductDetails}     //a[text()='See more product details']
${Table}              //table[@id='productDetails_techSpec_section_1']

${Shape_Header}       //th[@class='a-color-secondary a-size-base prodDetSectionEntry' and text()=' Shape ']
${Shape}              Shape 
