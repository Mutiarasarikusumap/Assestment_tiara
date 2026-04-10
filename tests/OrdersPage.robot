*** Settings ***
Resource          ../keywords/homepage_keywords.robot
Suite Setup       Go To Homepage
Suite Teardown    Close Browser

*** Test Cases ***

TC01 - Verify All Elements on Orders Page

    # Step 1 - Navigate to Orders Page
    Go To Orders Page
    Wait Until Element Is Visible    ${ORDERS_TITTLE}    timeout=${TIMEOUT}

    # Step 2 - Verify URL
    ${current_url}=    Get Location
    Should Be Equal    ${current_url}    ${URL_ORDERS}

    # Step 3 - Verify Header & Total Orders
    Check Orders Page Header

    # Step 4 - Verify all Filter Tabs exist
    Check Orders Filter Tabs

    # Step 5 - Verify all Table Headers exist
    Check Orders Table Header

    # Step 6 - Verify all orders in list
    Check Orders List

    # Step 7 - Verify View buttons are available
    Check Orders View Buttons
