*** Settings ***
Resource          ../keywords/homepage_keywords.robot
Suite Teardown    Close Browser

*** Test Cases ***

TC01 - Succed Open Homepage
    Go To Homepage
    Make sure Homepage Load
    Verification Homepage Element
    Verify Current URL

TC02 - Succed Navigate to Products Page
    Go To Products Page
    Sleep   2s
    Verify Current URL Products Page

TC03 - Succed Navigate to Orders Page
    Go To Orders Page
    Sleep   2s
    Verify Current URL Orders Page

TC04 - Succed Navigate to Cart Page
    Go To Cart Page
    Sleep   2s
    Verify Current URL Cart Page
    
    