*** Settings ***
Library  SeleniumLibrary
Resource  ../Variable.robot

*** Keywords ***
My Subscription
    Click Element  xpath=.//li/a[contains(text(),'Mitt abonnemang')]

Verify Page Loaded
    Wait Until Page Contains  Mitt nuvarande abonnemang

Audit and Change
    Click Button  xpath=.//button[contains(text(),'Granska och ändra')]

Select Package
    [Arguments]  ${numb_of_addon}
    @{selected_addons} =  Evaluate  random.sample(${PRODUCT_SELECTABLES}, ${numb_of_addon})    random

    FOR  ${i}  IN   @{selected_addons}
        #Log  ${i}
       Click Button  xpath=.//app-catalog-item/div[@class='box subscription-info-box']//div[@class='section-2']//div[contains(text(),'${i}')]/parent::div/parent::div/following-sibling::div//following-sibling::button
    END

Save Changes
    Click Button  xpath=.//div[@class='product-list ng-star-inserted']//div//button[contains(text(),'Spara ändringar')]