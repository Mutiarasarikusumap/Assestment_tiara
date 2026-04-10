*** Settings ***
Library           SeleniumLibrary
Resource          ../variables/common_variables.robot
Resource          ../pages/homepage_page.robot

*** Keywords ***
Go To Homepage
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Create WebDriver    Chrome    options=${options}
    Go To    ${URL}
    Maximize Browser Window

Make sure Homepage Load
    Wait Until Element Is Visible    ${HOMEPAGE_MAIN_ELEMENT}    timeout=${TIMEOUT}

Verification Homepage Element
    Element Should Be Visible    ${HOMEPAGE_MAIN_ELEMENT}

Verify Current URL
    ${current_url}=    Get Location
    Should Be Equal    ${current_url}    ${URL}

Close Browser
    Close All Browsers

Go To Products Page
    Click Element    ${PRODUCTS_MENU}

Verify Products Page
    Wait Until Page Contains    ${PRODUCTS_TITTLE_PAGE}     timeout=${TIMEOUT}

Verify Current URL Products Page
    ${current_url}=    Get Location
    Should Be Equal    ${current_url}    ${URL_PRODUCTS}

Go To Orders Page
    Click Element    ${ORDERS_MENU}

Verify Current URL Orders Page
    ${current_url}=    Get Location
    Should Be Equal    ${current_url}    ${URL_ORDERS}

Verify Current URL Cart Page
    ${current_url}=    Get Location
    Should Be Equal    ${current_url}    ${URL_CART}

Check Overview Tittle
    Element Should Be Visible    ${OVERVIEW_TITTLE}

Check Recent Orders Tittle
    Element Should Be Visible    ${RECENT_ORDERS_TITTLE}

Check Low Stock Tittle
    Element Should Be Visible    ${LOW_STOCK_TITTLE}

Check Revenue Card
    Element Should Be Visible    ${REVENUE_CARD}

Check Orders Card
    Element Should Be Visible    ${ORDERS_CARD}

Check Pending Card
    Element Should Be Visible    ${PENDING_CARD}

Check Products Card
    Element Should Be Visible    ${PRODUCTS_CARD}

Check Product Header
    Element Should Be Visible    ${PRODUCTS_TITTLE_PAGE}
    Element Should Be Visible    ${ADD_PRODUCT_BUTTON}

Check List Product
    Element Should Be Visible    ${PRODUCT_4K_WEBCAM_PRO}
    Element Should Be Visible    ${PRODUCT_DESK_ORGANIZER_SET}
    Element Should Be Visible    ${PRODUCT_ERGONOMIC_OFFICE_CHAIR}

Click Add Product Button
    Click Element    ${ADD_PRODUCT_BUTTON}
    Sleep   2s

Check Add Product Form
    Element Should Be Visible    ${NEW_PRODUCT_TITTLE}
    Element Should Be Visible    ${INPUT_NAME}
    Element Should Be Visible    ${INPUT_PRICE}
    Element Should Be Visible    ${INPUT_STOCK}
    Element Should Be Visible    ${INPUT_DESCRIPTION}
    Element Should Be Visible    ${INPUT_IMAGE_URL}
    Element Should Be Visible    ${BUTTON_CREATE}
    Element Should Be Visible    ${BUTTON_CANCEL}

Fill Add Product Form
    [Arguments]    ${name}    ${price}    ${stock}    ${description}    ${category}=Electronics    ${image_url}=${EMPTY}
    Wait Until Element Is Visible    ${NEW_PRODUCT_TITTLE}    timeout=${TIMEOUT}
    Element Should Be Visible        ${NEW_PRODUCT_TITTLE}
    Wait Until Element Is Visible    ${INPUT_NAME}    timeout=${TIMEOUT}
    Clear Element Text               ${INPUT_NAME}
    Input Text                       ${INPUT_NAME}    ${name}
    Wait Until Element Is Visible    ${INPUT_PRICE}    timeout=${TIMEOUT}
    Clear Element Text               ${INPUT_PRICE}
    Input Text                       ${INPUT_PRICE}    ${price}
    Wait Until Element Is Visible    ${INPUT_STOCK}    timeout=${TIMEOUT}
    Clear Element Text               ${INPUT_STOCK}
    Input Text                       ${INPUT_STOCK}    ${stock}
    Wait Until Element Is Visible    xpath=//select    timeout=${TIMEOUT}
    Select From List By Label        xpath=//select    ${category}
    Wait Until Element Is Visible    ${INPUT_DESCRIPTION}    timeout=${TIMEOUT}
    Clear Element Text               ${INPUT_DESCRIPTION}
    Input Text                       ${INPUT_DESCRIPTION}    ${description}
    Run Keyword If    '${image_url}' != '${EMPTY}'
    ...    Input Text    ${INPUT_IMAGE_URL}    ${image_url}

Submit Add Product Form
    Wait Until Element Is Visible    ${BUTTON_CREATE}    timeout=${TIMEOUT}
    Click Element                    ${BUTTON_CREATE}

Check Success Add Product
    Wait Until Element Is Visible    ${SUCCED_ADD_PRODUCT}    timeout=${TIMEOUT}
    Element Should Be Visible        ${SUCCED_ADD_PRODUCT}

Click Back To Products Button
    Click Element                    ${BACK_TO_PRODUCTS_BUTTON}
    Sleep   2s

Click Edit Product
    [Arguments]    ${product_xpath}
    Wait Until Element Is Visible    ${product_xpath}    timeout=${TIMEOUT}
    Click Element                    ${product_xpath}

Check Edit Product Form
    Wait Until Element Is Visible    ${EDIT_PRODUCT_TITTLE}    timeout=${TIMEOUT}
    Element Should Be Visible        ${EDIT_PRODUCT_TITTLE}
    Element Should Be Visible        ${EDIT_INPUT_NAME}
    Element Should Be Visible        ${EDIT_INPUT_PRICE}
    Element Should Be Visible        ${EDIT_INPUT_STOCK}
    Element Should Be Visible        ${EDIT_INPUT_DESCRIPTION}
    Element Should Be Visible        ${EDIT_INPUT_IMAGE_URL}
    Element Should Be Visible        ${BUTTON_SAVE_CHANGES}
    Element Should Be Visible        ${BUTTON_CANCEL_EDIT}

Fill Edit Product Form
    [Arguments]    ${name}    ${price}    ${stock}    ${description}    ${category}=Electronics    ${image_url}=${EMPTY}
    Wait Until Element Is Visible    ${EDIT_INPUT_NAME}    timeout=${TIMEOUT}
    Clear Element Text               ${EDIT_INPUT_NAME}
    Input Text                       ${EDIT_INPUT_NAME}    ${name}
    Wait Until Element Is Visible    ${EDIT_INPUT_PRICE}    timeout=${TIMEOUT}
    Clear Element Text               ${EDIT_INPUT_PRICE}
    Input Text                       ${EDIT_INPUT_PRICE}    ${price}
    Wait Until Element Is Visible    ${EDIT_INPUT_STOCK}    timeout=${TIMEOUT}
    Clear Element Text               ${EDIT_INPUT_STOCK}
    Input Text                       ${EDIT_INPUT_STOCK}    ${stock}
    Wait Until Element Is Visible    ${EDIT_DROPDOWN_CATEGORY}    timeout=${TIMEOUT}
    Select From List By Label        ${EDIT_DROPDOWN_CATEGORY}    ${category}
    Wait Until Element Is Visible    ${EDIT_INPUT_DESCRIPTION}    timeout=${TIMEOUT}
    Clear Element Text               ${EDIT_INPUT_DESCRIPTION}
    Input Text                       ${EDIT_INPUT_DESCRIPTION}    ${description}
    Run Keyword If    '${image_url}' != '${EMPTY}'
    ...    Input Text    ${EDIT_INPUT_IMAGE_URL}    ${image_url}

Submit Edit Product Form
    Wait Until Element Is Visible    ${BUTTON_SAVE_CHANGES}    timeout=${TIMEOUT}
    Click Element                    ${BUTTON_SAVE_CHANGES}

Verify Product Updated Successfully
    Wait Until Element Is Visible    xpath=//p[text()='Product updated']    timeout=${TIMEOUT}
    Element Should Be Visible        xpath=//p[text()='Product updated']

Click Cancel Edit
    Wait Until Element Is Visible    ${BUTTON_CANCEL_EDIT}    timeout=${TIMEOUT}
    Click Element                    ${BUTTON_CANCEL_EDIT}

Go To Cart Page
    Click Element                    ${CART_MENU}

Verify Cart Page Loaded
    Element Should Be Visible        ${CART_TITTLE}
    ${current_url}=    Get Location
    Should Be Equal    ${current_url}    ${URL_CART}

Add Product To Cart
    [Arguments]    ${product_name}
    Click Element    xpath=//a[normalize-space()='${product_name}']/ancestor::div//button[contains(text(),'Add to cart')]
    Sleep    1s

Verify Product In Cart
    [Arguments]    ${product_name}
    Wait Until Element Is Visible    xpath=//span[text()='${product_name}']    timeout=${TIMEOUT}
    Element Should Be Visible        xpath=//span[text()='${product_name}']

Verify Product Price In Cart
    [Arguments]    ${product_name}    ${expected_price}
    ${price_xpath}=    Set Variable    xpath=//span[text()='${product_name}']/ancestor::td/following-sibling::td[1]
    Wait Until Element Is Visible    ${price_xpath}    timeout=${TIMEOUT}
    ${actual_price}=    Get Text    ${price_xpath}
    Should Be Equal    ${actual_price}    ${expected_price}

Verify Product Not In Cart
    [Arguments]    ${product_name}
    Element Should Not Be Visible    xpath=//span[text()='${product_name}']

Verify Cart Item Count
    [Arguments]    ${expected_count}
    Wait Until Element Is Visible    ${CART_ITEM_COUNT}    timeout=${TIMEOUT}
    ${count_text}=    Get Text    ${CART_ITEM_COUNT}
    Should Contain    ${count_text}    ${expected_count}

Verify Cart Total
    [Arguments]    ${expected_total}
    Wait Until Element Is Visible    ${CART_TOTAL}    timeout=${TIMEOUT}
    ${actual_total}=    Get Text    ${CART_TOTAL}
    Should Be Equal    ${actual_total}    ${expected_total}

Remove Item From Cart
    [Arguments]    ${product_name}
    Wait Until Element Is Visible    xpath=//span[text()='${product_name}']/ancestor::tr//td[last()]/button    timeout=${TIMEOUT}
    Click Element                    xpath=//span[text()='${product_name}']/ancestor::tr//td[last()]/button
    Sleep    1s

Remove All Items From Cart
    ${rows}=    Get Element Count    xpath=//tbody/tr
    WHILE    ${rows} > 0
        Wait Until Element Is Visible    xpath=(//button[text()='Remove'])[1]    timeout=${TIMEOUT}
        Click Element                    xpath=(//button[text()='Remove'])[1]
        Sleep    1s
        ${rows}=    Get Element Count    xpath=//tbody/tr
    END

Verify Item Removed From Cart
    [Arguments]    ${product_name}
    Element Should Not Be Visible    xpath=//span[text()='${product_name}']

Fill Shipping Details
    [Arguments]    ${full_name}    ${email}    ${address}
    Wait Until Element Is Visible    ${CART_SHIPPING_TITLE}      timeout=${TIMEOUT}
    Wait Until Element Is Visible    ${CART_INPUT_FULLNAME}      timeout=${TIMEOUT}
    Clear Element Text               ${CART_INPUT_FULLNAME}
    Input Text                       ${CART_INPUT_FULLNAME}      ${full_name}
    Wait Until Element Is Visible    ${CART_INPUT_EMAIL}         timeout=${TIMEOUT}
    Clear Element Text               ${CART_INPUT_EMAIL}
    Input Text                       ${CART_INPUT_EMAIL}         ${email}
    Wait Until Element Is Visible    ${CART_INPUT_ADDRESS}       timeout=${TIMEOUT}
    Clear Element Text               ${CART_INPUT_ADDRESS}
    Input Text                       ${CART_INPUT_ADDRESS}       ${address}

Click Place Order Button
    Wait Until Element Is Visible    ${CART_BUTTON_PLACE_ORDER}    timeout=${TIMEOUT}
    Scroll Element Into View         ${CART_BUTTON_PLACE_ORDER}
    Click Element                    ${CART_BUTTON_PLACE_ORDER}
    Sleep    2s

Verify Order Success
    # Verify "Order confirmed" title
    Wait Until Element Is Visible    xpath=//h2[text()='Order confirmed']    timeout=${TIMEOUT}
    Element Should Be Visible        xpath=//h2[text()='Order confirmed']

    # Verify "has been placed." text
    Element Should Be Visible        xpath=//p[contains(.,'has been placed.')]

    # Verify green checkmark icon appears
    Element Should Be Visible        xpath=//span[text()='✓']

    # Verify View Orders and Continue Shopping buttons appear
    Element Should Be Visible        xpath=//button[text()='View orders']
    Element Should Be Visible        xpath=//button[text()='Continue shopping']

    ${order_number}=    Get Text     xpath=//span[contains(@class,'font-mono')]

Click View Orders Button
    Wait Until Element Is Visible    xpath=//button[text()='View orders']    timeout=${TIMEOUT}
    Click Element                    xpath=//button[text()='View orders']

Click Continue Shopping Button
    Wait Until Element Is Visible    xpath=//button[text()='Continue shopping']    timeout=${TIMEOUT}
    Click Element                    xpath=//button[text()='Continue shopping']

Check Orders Page Header
    Element Should Be Visible    ${ORDERS_TITTLE}
    Element Should Be Visible    ${ORDERS_TOTAL_COUNT}

Check Orders Filter Tabs
    Element Should Be Visible    ${ORDERS_TAB_ALL}
    Element Should Be Visible    ${ORDERS_TAB_PENDING}
    Element Should Be Visible    ${ORDERS_TAB_PROCESSING}
    Element Should Be Visible    ${ORDERS_TAB_SHIPPED}
    Element Should Be Visible    ${ORDERS_TAB_DELIVERED}
    Element Should Be Visible    ${ORDERS_TAB_CANCELLED}

Check Orders Table Header
    Element Should Be Visible    ${ORDERS_HEADER_ORDER}
    Element Should Be Visible    ${ORDERS_HEADER_CUSTOMER}
    Element Should Be Visible    ${ORDERS_HEADER_ITEMS}
    Element Should Be Visible    ${ORDERS_HEADER_TOTAL}
    Element Should Be Visible    ${ORDERS_HEADER_STATUS}
    Element Should Be Visible    ${ORDERS_HEADER_DATE}

Check Orders List
    Element Should Be Visible    ${ORDER_ORD_1001}
    Element Should Be Visible    ${ORDER_ORD_1002}
    Element Should Be Visible    ${ORDER_ORD_1003}
    Element Should Be Visible    ${ORDER_ORD_1004}
    Element Should Be Visible    ${ORDER_ORD_1005}
    Element Should Be Visible    ${ORDER_ORD_1006}
    Element Should Be Visible    ${ORDER_ORD_1007}
    Element Should Be Visible    ${ORDER_ORD_1008}
    Element Should Be Visible    ${ORDER_ORD_1009}
    Element Should Be Visible    ${ORDER_ORD_1010}
    Element Should Be Visible    ${ORDER_ORD_1011}
    Element Should Be Visible    ${ORDER_ORD_1012}

Check Orders View Buttons
    Element Should Be Visible    ${ORDER_VIEW_ORD_1001}
    Element Should Be Visible    ${ORDER_VIEW_ORD_1002}
    Element Should Be Visible    ${ORDER_VIEW_ORD_1003}
    Element Should Be Visible    ${ORDER_VIEW_ORD_1004}
    Element Should Be Visible    ${ORDER_VIEW_ORD_1005}

Click View Order
    [Arguments]    ${order_id}
    Wait Until Element Is Visible    xpath=//a[@href='/orders/${order_id}']    timeout=${TIMEOUT}
    Click Element                    xpath=//a[@href='/orders/${order_id}']

Verify Order Detail Page
    [Arguments]    ${order_id}
    Wait Until Element Is Visible    xpath=//h1[text()='${order_id}']    timeout=${TIMEOUT}
    Element Should Be Visible        xpath=//h1[text()='${order_id}']
    ${current_url}=    Get Location
    Should Contain    ${current_url}    ${order_id}

Check Order Detail Customer Info
    Element Should Be Visible    ${ORDER_DETAIL_CUSTOMER_LABEL}
    Element Should Be Visible    ${ORDER_DETAIL_CUSTOMER_VALUE}
    Element Should Be Visible    ${ORDER_DETAIL_EMAIL_LABEL}
    Element Should Be Visible    ${ORDER_DETAIL_EMAIL_VALUE}
    Element Should Be Visible    ${ORDER_DETAIL_DATE_LABEL}
    Element Should Be Visible    ${ORDER_DETAIL_DATE_VALUE}
    Element Should Be Visible    ${ORDER_DETAIL_ADDRESS_LABEL}
    Element Should Be Visible    ${ORDER_DETAIL_ADDRESS_VALUE}

Check Order Detail Table
    Element Should Be Visible    ${ORDER_DETAIL_HEADER_PRODUCT}
    Element Should Be Visible    ${ORDER_DETAIL_HEADER_PRICE}
    Element Should Be Visible    ${ORDER_DETAIL_HEADER_QTY}
    Element Should Be Visible    ${ORDER_DETAIL_HEADER_SUBTOTAL}

Check Order Detail Items
    Element Should Be Visible    ${ORDER_DETAIL_ITEM_1}
    Element Should Be Visible    ${ORDER_DETAIL_ITEM_2}

Verify Order Detail Customer Value
    [Arguments]    ${customer}    ${email}    ${date}    ${address}
    ${actual_customer}=    Get Text    ${ORDER_DETAIL_CUSTOMER_VALUE}
    ${actual_email}=       Get Text    ${ORDER_DETAIL_EMAIL_VALUE}
    ${actual_date}=        Get Text    ${ORDER_DETAIL_DATE_VALUE}
    ${actual_address}=     Get Text    ${ORDER_DETAIL_ADDRESS_VALUE}
    Should Be Equal    ${actual_customer}    ${customer}
    Should Be Equal    ${actual_email}       ${email}
    Should Be Equal    ${actual_date}        ${date}
    Should Be Equal    ${actual_address}     ${address}

Verify Order Total
    [Arguments]    ${expected_total}
    Wait Until Element Is Visible    ${ORDER_DETAIL_TOTAL}    timeout=${TIMEOUT}
    ${actual_total}=    Get Text     ${ORDER_DETAIL_TOTAL}
    Should Be Equal    ${actual_total}    ${expected_total}

Click Back To Orders
    Wait Until Element Is Visible    ${ORDER_DETAIL_BACK_BTN}    timeout=${TIMEOUT}
    Click Element                    ${ORDER_DETAIL_BACK_BTN}
    Wait Until Element Is Visible    ${ORDERS_TITTLE}            timeout=${TIMEOUT}
