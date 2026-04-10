*** Settings ***
Resource          ../keywords/homepage_keywords.robot
Suite Teardown    Close Browser

*** Test Cases ***

TC01 - Check Overview Page
    Go To Homepage
    Sleep    2s
    Check Overview Tittle
    Check Recent Orders Tittle
    Check Low Stock Tittle
    Check Revenue Card
    Check Orders Card
    Check Pending Card
    Check Products Card 