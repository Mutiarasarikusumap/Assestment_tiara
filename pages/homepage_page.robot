*** Variables ***

${HOMEPAGE_MAIN_ELEMENT}        xpath=(//div[contains(@class,'px-5 pt-6')]//div)[1]
${PRODUCTS_MENU}                xpath=(//nav[@class='flex-1 px-3']//a)[2]
${ORDERS_MENU}                  xpath=(//nav[@class='flex-1 px-3']//a)[3]
${CART_MENU}                    xpath=(//nav[@class='flex-1 px-3']//a)[4]

# Overview Page
${OVERVIEW_TITTLE}              xpath=//h1[text()='Overview']
${RECENT_ORDERS_TITTLE}         xpath=//h2[text()='Recent Orders']
${LOW_STOCK_TITTLE}             xpath=//h2[text()='Low Stock']
${REVENUE_CARD}                 xpath=//*[contains(text(),'Revenue')]
${ORDERS_CARD}                  xpath=//*[contains(text(),'Orders')]
${PENDING_CARD}                 xpath=//*[contains(text(),'Pending')]
${PRODUCTS_CARD}                xpath=//*[contains(text(),'Products')]

#Products Page
${PRODUCTS_TITTLE_PAGE}         xpath=//h1[text()='Products']
${ADD_PRODUCT_BUTTON}           xpath=//a[@href='/products/new']

#Product - Filter Product Type
${TAB_ELECTRONICS}              xpath=//button[normalize-space()='Electronics']
${TAB_FURNITURE}                xpath=//button[normalize-space()='Furniture']
${TAB_ACCESSORIES}              xpath=//button[normalize-space()='Accessories']
${TAB_ALL}                      xpath=//button[normalize-space()='All']

#Product - Filter 
${HEADER_NAME}                  xpath=//th[text()='Name']
${HEADER_PRICE}                 xpath=//*[text()='Price']
${HEADER_STOCK}                 xpath=//*[text()='Stock']

#Product - List Product
${PRODUCT_4K_WEBCAM_PRO}        xpath=//a[@href='/products/7/edit']
${PRODUCT_DESK_ORGANIZER_SET}   xpath=//a[@href='/products/10/edit']
${PRODUCT_ERGONOMIC_OFFICE_CHAIR}  xpath=//a[@href='/products/3/edit']
${PRODUCT_LAPTOP_BACKPACK}      xpath=//a[@href='/products/6/edit'] 

#Product - Add to Cart
${ADD_TO_CART_1}                xpath=(//button[contains(text(),'Add to cart')])[1]
${ADD_TO_CART_2}                xpath=(//button[contains(text(),'Add to cart')])[2]
${ADD_TO_CART_BY_NAME}          xpath=//a[text()='4K Webcam Pro']/ancestor::div//button[contains(text(),'Add to cart')]

#Product - Pagination
${BUTTON_PREV}                  xpath=//button[text()='Prev']
${BUTTON_NEXT}                  xpath=//button[text()='Next']
${PAGE_1}                       xpath=//button[text()='1']
${PAGE_2}                       xpath=//button[text()='2']
${PAGE_3}                       xpath=//button[text()='3']

#New Product Page
${NEW_PRODUCT_TITTLE}           xpath=//h1[text()='New product']
${INPUT_NAME}                   xpath=//label[text()='Name']/following-sibling::input
${INPUT_PRICE}                  xpath=//label[text()='Price ($)']/following-sibling::input
${INPUT_STOCK}                  xpath=//label[text()='Stock']/following-sibling::input
${INPUT_DESCRIPTION}            xpath=//label[text()='Description']/following-sibling::textarea
${INPUT_IMAGE_URL}              xpath=//label[contains(text(),'Image URL')]/following-sibling::input
${BUTTON_CREATE}                xpath=//button[text()='Create']
${BUTTON_CANCEL}                xpath=//button[text()='Cancel']
${SUCCED_ADD_PRODUCT}           xpath=//p[text()='Product created']
${BACK_TO_PRODUCTS_BUTTON}      xpath=//a[text()='Back to products']

#Edit Product Page
${EDIT_PRODUCT_TITTLE}          xpath=//h1[text()='Edit product']
${EDIT_INPUT_NAME}              xpath=//label[text()='Name']/following-sibling::input
${EDIT_INPUT_PRICE}             xpath=//label[text()='Price ($)']/following-sibling::input
${EDIT_INPUT_STOCK}             xpath=//label[text()='Stock']/following-sibling::input
${EDIT_INPUT_DESCRIPTION}       xpath=//label[text()='Description']/following-sibling::textarea
${EDIT_INPUT_IMAGE_URL}         xpath=//label[contains(text(),'Image URL')]/following-sibling::input
${EDIT_DROPDOWN_CATEGORY}       xpath=//select
${BUTTON_SAVE_CHANGES}          xpath=//button[text()='Save changes']
${BUTTON_CANCEL_EDIT}           xpath=//button[text()='Cancel']
${BACK_TO_PRODUCTS}             xpath=//a[@href='/products']

#Cart Page
${CART_TITTLE}                      xpath=//h1[text()='Cart']
${CART_ITEM_COUNT}                  xpath=//h1[text()='Cart']/following-sibling::p

# Cart - Table Header
${CART_HEADER_PRODUCT}              xpath=//th[contains(text(),'Product')]
${CART_HEADER_PRICE}                xpath=//th[contains(text(),'Price')]
${CART_HEADER_QTY}                  xpath=//th[contains(text(),'Qty')]
${CART_HEADER_SUBTOTAL}             xpath=//th[contains(text(),'Subtotal')]

# Cart - Item by nama produk
${CART_ITEM_4K_WEBCAM}              xpath=//span[text()='4K Webcam Pro']
${CART_ITEM_DESK_ORGANIZER}         xpath=//span[text()='Desk Organizer Set']
${CART_ITEM_ERGONOMIC_CHAIR}        xpath=//span[text()='Ergonomic Office Chair']
${CART_ITEM_LAPTOP_BACKPACK}        xpath=//span[text()='Laptop Backpack']

# Cart - Price per item
${CART_PRICE_4K_WEBCAM}             xpath=//span[text()='4K Webcam Pro']/ancestor::td/following-sibling::td[1]
${CART_PRICE_DESK_ORGANIZER}        xpath=//span[text()='Desk Organizer Set']/ancestor::td/following-sibling::td[1]

# Cart - Quantity control
${CART_QTY_DECREASE_1}              xpath=(//button[text()='−'])[1]
${CART_QTY_INCREASE_1}              xpath=(//button[text()='+'])[1]
${CART_QTY_VALUE_1}                 xpath=(//span[contains(@class,'text-center')])[1]
${CART_QTY_DECREASE_2}              xpath=(//button[text()='−'])[2]
${CART_QTY_INCREASE_2}              xpath=(//button[text()='+'])[2]
${CART_QTY_VALUE_2}                 xpath=(//span[contains(@class,'text-center')])[2]

# Cart - Remove button
${CART_REMOVE_ITEM_1}               xpath=(//button[text()='Remove'])[1]
${CART_REMOVE_ITEM_2}               xpath=(//button[text()='Remove'])[2]

# Cart - Shipping Details Form
${CART_SHIPPING_TITLE}              xpath=//p[text()='Shipping details']
${CART_INPUT_FULLNAME}              xpath=//input[@placeholder='Full name']
${CART_INPUT_EMAIL}                 xpath=//input[@placeholder='Email']
${CART_INPUT_ADDRESS}               xpath=//textarea[@placeholder='Shipping address']

# Cart - Summary
${CART_SUMMARY_TITLE}               xpath=//p[text()='Summary']
${CART_SUBTOTAL}                    xpath=//span[text()='Subtotal']/following-sibling::span
${CART_SHIPPING_COST}               xpath=//span[text()='Shipping']/following-sibling::span
${CART_TOTAL}                       xpath=//span[text()='Total']/following-sibling::span

# Cart - Discount Code
${CART_INPUT_DISCOUNT}              xpath=//input[@placeholder='Discount code']
${CART_BUTTON_APPLY_DISCOUNT}       xpath=//button[text()='Apply']

# Cart - Place Order
${CART_BUTTON_PLACE_ORDER}          xpath=//button[text()='Place order']

#Orders Page
${ORDERS_TITTLE}                    xpath=//h1[text()='Orders']
${ORDERS_TOTAL_COUNT}               xpath=//*[contains(.,'12 total orders')]

# Orders - Filter Tab
${ORDERS_TAB_ALL}                   xpath=//button[text()='All']
${ORDERS_TAB_PENDING}               xpath=//button[text()='pending']
${ORDERS_TAB_PROCESSING}            xpath=//button[text()='processing']
${ORDERS_TAB_SHIPPED}               xpath=//button[text()='shipped']
${ORDERS_TAB_DELIVERED}             xpath=//button[text()='delivered']
${ORDERS_TAB_CANCELLED}             xpath=//button[text()='cancelled']

# Orders - Table Header
${ORDERS_HEADER_ORDER}              xpath=//th[text()='Order']
${ORDERS_HEADER_CUSTOMER}           xpath=//th[text()='Customer']
${ORDERS_HEADER_ITEMS}              xpath=//th[text()='Items']
${ORDERS_HEADER_TOTAL}              xpath=//th[text()='Total']
${ORDERS_HEADER_STATUS}             xpath=//th[text()='Status']
${ORDERS_HEADER_DATE}               xpath=//th[text()='Date']

# Orders - Order List
${ORDER_ORD_1001}                   xpath=//td[text()='ORD-1001']
${ORDER_ORD_1002}                   xpath=//td[text()='ORD-1002']
${ORDER_ORD_1003}                   xpath=//td[text()='ORD-1003']
${ORDER_ORD_1004}                   xpath=//td[text()='ORD-1004']
${ORDER_ORD_1005}                   xpath=//td[text()='ORD-1005']
${ORDER_ORD_1006}                   xpath=//td[text()='ORD-1006']
${ORDER_ORD_1007}                   xpath=//td[text()='ORD-1007']
${ORDER_ORD_1008}                   xpath=//td[text()='ORD-1008']
${ORDER_ORD_1009}                   xpath=//td[text()='ORD-1009']
${ORDER_ORD_1010}                   xpath=//td[text()='ORD-1010']
${ORDER_ORD_1011}                   xpath=//td[text()='ORD-1011']
${ORDER_ORD_1012}                   xpath=//td[text()='ORD-1012']

# Orders - View Button per Order
${ORDER_VIEW_ORD_1001}              xpath=//a[@href='/orders/ORD-1001']
${ORDER_VIEW_ORD_1002}              xpath=//a[@href='/orders/ORD-1002']
${ORDER_VIEW_ORD_1003}              xpath=//a[@href='/orders/ORD-1003']
${ORDER_VIEW_ORD_1004}              xpath=//a[@href='/orders/ORD-1004']
${ORDER_VIEW_ORD_1005}              xpath=//a[@href='/orders/ORD-1005']

# Order Detail Page
${ORDER_DETAIL_BACK_BTN}            xpath=//a[@href='/orders']
${ORDER_DETAIL_TITTLE}              xpath=//h1[text()='ORD-1001']
${ORDER_DETAIL_STATUS}              xpath=//h1[text()='ORD-1001']/following-sibling::*[1]

# Order Detail - Customer Info
${ORDER_DETAIL_CUSTOMER_LABEL}      xpath=//*[text()='Customer']
${ORDER_DETAIL_CUSTOMER_VALUE}      xpath=//*[text()='Customer']/following-sibling::*[1]
${ORDER_DETAIL_EMAIL_LABEL}         xpath=//*[text()='Email']
${ORDER_DETAIL_EMAIL_VALUE}         xpath=//*[text()='Email']/following-sibling::*[1]
${ORDER_DETAIL_DATE_LABEL}          xpath=//*[text()='Date']
${ORDER_DETAIL_DATE_VALUE}          xpath=//*[text()='Date']/following-sibling::*[1]
${ORDER_DETAIL_ADDRESS_LABEL}       xpath=//*[text()='Address']
${ORDER_DETAIL_ADDRESS_VALUE}       xpath=//*[text()='Address']/following-sibling::*[1]

# Order Detail - Table Header
${ORDER_DETAIL_HEADER_PRODUCT}      xpath=//th[text()='Product']
${ORDER_DETAIL_HEADER_PRICE}        xpath=//th[text()='Price']
${ORDER_DETAIL_HEADER_QTY}          xpath=//th[text()='Qty']
${ORDER_DETAIL_HEADER_SUBTOTAL}     xpath=//th[text()='Subtotal']

# Order Detail - Items ORD-1001
${ORDER_DETAIL_ITEM_1}              xpath=//td[contains(text(),'Wireless Bluetooth Headphones')]
${ORDER_DETAIL_ITEM_2}              xpath=//td[contains(text(),'USB-C Charging Cable 2m')]
${ORDER_DETAIL_TOTAL}               xpath=//td[text()='Total']/following-sibling::td[last()]

# Search - tambahkan ke pages/homepage_page.robot
${SEARCH_INPUT}                     xpath=//input[@placeholder='Search...']



