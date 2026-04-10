# Assestment Tiara - QA Automation with Robot Framework

Automated testing project for [StoreFront Admin Panel](https://qa-assessment-ten.vercel.app/) using Robot Framework and SeleniumLibrary.

---

## 🛠️ Tech Stack

- **Language**: Python 3.9+
- **Framework**: Robot Framework
- **Library**: SeleniumLibrary
- **Browser**: Google Chrome
- **Design Pattern**: Page Object Model (POM)

---

## 📁 Project Structure

```
assestment_tiara/
├── venv/                          # Virtual environment (not pushed to repo)
├── pages/
│   └── homepage_page.robot        # All element locators / XPath
├── keywords/
│   └── homepage_keywords.robot    # All reusable keywords / functions
├── variables/
│   └── common_variables.robot     # Global variables (URL, browser, timeout)
├── tests/
│   ├── AllMenu.robot              # TC - Navigation menu & homepage
│   ├── OverviewPage.robot         # TC - Overview page
│   ├── ProductsPage.robot         # TC - Products page (add, edit, cart, order)
│   ├── SearchProducts.robot       # TC - Search & sort products
│   ├── OrdersPage.robot           # TC - Orders page elements
│   └── OrdersDetailsPage.robot    # TC - Order detail page
└── README.md
```

---

## ⚙️ Installation & Setup

### 1. Clone this repository
```bash
git clone https://github.com/Mutiarasarikusumap/Assestment_tiara.git
cd Assestment_tiara
```

### 2. Create and activate virtual environment
```bash
python3 -m venv venv
source venv/bin/activate
```

### 3. Install dependencies
```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

### 4. Install ChromeDriver
Make sure ChromeDriver version matches your installed Chrome browser version.
```bash
brew install --cask chromedriver
xattr -d com.apple.quarantine $(which chromedriver)
```

### 5. Verify installation
```bash
robot --version
chromedriver --version
```

---

## ▶️ How to Run Tests

Make sure virtual environment is active before running any test:
```bash
source venv/bin/activate
```

### Run a specific test file
```bash
robot tests/AllMenu.robot
robot tests/OverviewPage.robot
robot tests/ProductsPage.robot
robot tests/SearchProducts.robot
robot tests/OrdersPage.robot
robot tests/OrdersDetailsPage.robot
```

### Run all tests at once
```bash
robot tests/
```

---

## 🧪 Test Cases

### 📌 AllMenu.robot — Navigation
| TC | Description |
|---|---|
| TC01 | Succeed open homepage and verify main elements |
| TC02 | Succeed navigate to Products Page |
| TC03 | Succeed navigate to Orders Page |
| TC04 | Succeed navigate to Cart Page |

### 📌 OverviewPage.robot — Overview
| TC | Description |
|---|---|
| TC01 | Check all elements on Overview page are visible |

### 📌 ProductsPage.robot — Products
| TC | Description |
|---|---|
| TC01 | Check all elements on Products page are visible |
| TC02 | Verify Add Product form is accessible and all fields are visible |
| TC03 | Succeed add new product and verify back to Products page |
| TC04 | Succeed edit existing product |
| TC05 | Add product to cart and verify product appears in Cart |
| TC06 | Verify products not added do not appear in Cart |
| TC07 | Place order successfully with shipping details |

### 📌 SearchProducts.robot — Search & Sort
| TC | Description |
|---|---|
| TC01 | Search product by keyword and verify correct result appears |
| TC02 | Sort products by Price column and verify products still visible |
| TC03 | Sort products by Stock column and verify products still visible |

### 📌 OrdersPage.robot — Orders List
| TC | Description |
|---|---|
| TC01 | Verify all elements on Orders page (header, filter tabs, table, order list) |

### 📌 OrdersDetailsPage.robot — Order Detail
| TC | Description |
|---|---|
| TC01 | Verify all elements on Orders detail page are visible |
| TC02 | View detail order ORD-1001 and verify customer info, items, and total |

---

## 📊 Test Reports

After running tests, Robot Framework automatically generates:
- `report.html` — Summary of test results
- `log.html` — Detailed step-by-step execution log
- `output.xml` — Raw test output data

Open the report in browser:
```bash
open report.html
```

---

## 🗂️ POM Structure Explanation

This project follows the **Page Object Model (POM)** pattern to keep the code clean, maintainable, and scalable.

| Folder | File | Purpose |
|---|---|---|
| `variables/` | `common_variables.robot` | Stores global config like URL, browser, and timeout |
| `pages/` | `homepage_page.robot` | Stores all XPath locators for every page element |
| `keywords/` | `homepage_keywords.robot` | Stores all reusable actions/functions called by test cases |
| `tests/` | `*.robot` | Contains actual test cases — only calls keywords, no raw XPath |

### Benefits of POM
- **Easy maintenance** — if a locator changes, update only in `pages/`
- **Reusability** — keywords can be reused across multiple test cases
- **Readability** — test cases read like plain English steps
- **Scalability** — easy to add new pages and test cases

---

## 🌐 Application Under Test

**StoreFront Admin Panel**
- URL: https://qa-assessment-ten.vercel.app/
- Pages tested: Overview, Products, Cart, Orders, Order Detail

## BUG Report Manual 
Spreadsheet -> https://docs.google.com/spreadsheets/d/1kxOnldWNDQTrdHDtR8AMlOns4QyWAkKhObmdsvqn-8w/edit?usp=sharing
