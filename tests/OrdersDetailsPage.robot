*** Settings ***
Resource          ../keywords/homepage_keywords.robot
Suite Setup       Go To Homepage
Suite Teardown    Close Browser

*** Test Cases ***

TC01 - Verifikasi Semua Elemen Halaman Orders
    Go To Orders Page
    Wait Until Element Is Visible    ${ORDERS_TITTLE}    timeout=${TIMEOUT}
    ${current_url}=    Get Location
    Should Be Equal    ${current_url}    ${URL_ORDERS}
    Check Orders Page Header
    Check Orders Filter Tabs
    Check Orders Table Header
    Check Orders List
    Check Orders View Buttons

TC02 - View Detail Order ORD-1001 Dan Verifikasi
    Go To Orders Page
    Wait Until Element Is Visible    ${ORDERS_TITTLE}    timeout=${TIMEOUT}
    Click View Order    ORD-1001
    Verify Order Detail Page    ORD-1001
    Check Order Detail Customer Info
    Verify Order Detail Customer Value
    ...    customer=Sarah Johnson
    ...    email=sarah.j@email.com
    ...    date=2026-03-15
    ...    address=123 Oak Street, Austin, TX 78701
    Check Order Detail Table
    Check Order Detail Items
    Verify Order Total    $105.98
    Click Back To Orders
    Verify Current URL Orders Page
