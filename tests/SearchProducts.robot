*** Settings ***
Resource          ../keywords/homepage_keywords.robot
Suite Setup       Go To Homepage
Suite Teardown    Close Browser

*** Test Cases ***

TC01 - Search Product And Verify Result Appears
    Go To Products Page
    Search Product    Webcam
    Verify Search Result Visible    4K Webcam Pro
    Verify Search Result Not Visible    Desk Organizer Set
    Verify Search Result Not Visible    Ergonomic Office Chair
    Clear Search
    Verify Search Result Visible    4K Webcam Pro

TC02 - Sort Products By Price Column
    Go To Products Page
    Click Sort Column    ${HEADER_PRICE}

TC03 - Sort Products By Stock Column
    Go To Products Page         
    Click Sort Column    ${HEADER_STOCK}
