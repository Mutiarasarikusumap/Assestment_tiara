*** Settings ***
Resource          ../keywords/homepage_keywords.robot
Suite Setup       Go To Homepage
Suite Teardown    Close Browser

*** Variables ***
${FULLNAME}       Tiara Automation
${EMAIL}          tiara@automation.com
${ADDRESS}        Jl. Robot Framework No. 10, Wonosobo, Jawa Tengah

*** Test Cases ***

TC01 - Check Product Page 
    Go To Products Page
    Sleep   2s
    Check Product Header
    Check List Product 

TC02 - Add Product Page 
    Go To Products Page
    Sleep   2s
    Click Add Product Button
    Sleep   2s
    Check Add Product Form 

TC03 - Succed Add New Product and Check Back To Products 
    Go To Products Page
    Click Add Product Button
    Sleep   2s
    Fill Add Product Form
    ...    name=Robot Test Product
    ...    price=999.99
    ...    stock=50
    ...    description=This is Description
    ...    category=Electronics
    ...    image_url=https://images.unsplash.com/photo-1593642632559-0c6d3fc62b89?w=300&h=300&fit=crop
    Submit Add Product Form
    Check Success Add Product

TC04 - Succeed Edit Product
    Go To Products Page
    Click Edit Product    ${PRODUCT_4K_WEBCAM_PRO}
    Check Edit Product Form
    Fill Edit Product Form
    ...    name=4K Webcam Pro Updated
    ...    price=149.99
    ...    stock=25
    ...    description=Product updated by Robot Framework automation test
    ...    category=Electronics
    Submit Edit Product Form
    Verify Product Updated Successfully

TC05 - Add Product To Cart and Verify
    Go To Products Page
    Add Product To Cart    4K Webcam Pro
    Go To Cart Page
    Verify Cart Page Loaded
    Verify Product In Cart           4K Webcam Pro
    Verify Product Price In Cart     4K Webcam Pro    $129.99
    Verify Cart Item Count           1
    Remove Item From Cart            4K Webcam Pro
    Verify Item Removed From Cart    4K Webcam Pro

TC06 - Verify Not Added Products Do Not Appear In Cart
    Go To Products Page
    Add Product To Cart    4K Webcam Pro
    Go To Cart Page
    Verify Cart Page Loaded
    Verify Product In Cart           4K Webcam Pro
    Verify Product Not In Cart       Desk Organizer Set
    Verify Product Not In Cart       Ergonomic Office Chair
    Remove Item From Cart            4K Webcam Pro
    Verify Item Removed From Cart    4K Webcam Pro

TC07 - Place Order Succeed
    Go To Products Page
    Add Product To Cart    4K Webcam Pro
    Go To Cart Page
    Verify Cart Page Loaded
    Verify Product In Cart    4K Webcam Pro
    Fill Shipping Details
    ...    full_name=${FULLNAME}
    ...    email=${EMAIL}
    ...    address=${ADDRESS}
    Click Place Order Button
    Verify Order Success

