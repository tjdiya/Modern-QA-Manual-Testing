# 🔑 Test Documentation: Facebook Login Module

## 1. 📖 User Story
**As a** registered Facebook user,
**I want** to securely log into my account using my credentials,
**so that** I can access my personalized news feed and interact with my network.

### ✅ Acceptance Criteria (AC)
- **AC_01:** Users must be able to log in with either a registered email or mobile number.
- **AC_02:** The system must validate the password and provide a clear error for incorrect credentials.
- **AC_03:** A "Forgot Password" link must be available and functional.
- **AC_04:** The account should be temporarily locked after 5 consecutive failed attempts (Security).

---

## 2. 📋 Test Scenarios (High-Level)
| ID | Scenario Description | Category | Priority |
| :--- | :--- | :--- | :--- |
| **TS_L01** | Verify login success with valid email/password. | Positive | Critical |
| **TS_L02** | Verify login success with valid mobile number/password. | Positive | High |
| **TS_L03** | Verify error message for an unregistered email. | Negative | High |
| **TS_L04** | Verify error message for an incorrect password. | Negative | High |
| **TS_L05** | Verify account lockout after 5 failed attempts. | Security | Critical |
| **TS_L06** | Verify password visibility toggle functionality. | UI/UX | Low |

---

## 3. 🧪 Detailed Test Case (Execution)

### **Test Case ID:** TC_LOGIN_001
**Title:** Successful Login via Registered Email  
**Scenario Reference:** TS_L01  
**Pre-condition:** User has a confirmed account with email `test_ajax@example.com` and password `Password123!`.

#### **Execution Steps**
| # | Step Description | Test Data | Expected Result |
| :-- | :--- | :--- | :--- |
| 1 | Navigate to the Facebook Login page. | URL: facebook.com | Page loads with Email and Password fields. |
| 2 | Enter the registered email address. | `test@gmail.com` | Email field accepts the input. |
| 3 | Enter the correct password. | `Password123!` | Characters are masked (dots) for security. |
| 4 | Click the 'Log In' button. | N/A | Request is sent to the authentication API. |

#### **Expected Results**
- User is successfully redirected to the **Facebook Home/News Feed**.
- A session token is generated in the browser cookies.
- No error messages are displayed.

---

### **Test Case ID:** TC_LOGIN_002
**Title:** Login Failure with Incorrect Password  
**Scenario Reference:** TS_L04  

#### **Execution Steps**
| # | Step Description | Test Data | Expected Result |
| :-- | :--- | :--- | :--- |
| 1 | Enter a valid registered email. | `testx@example.com` | Field accepts input. |
| 2 | Enter an **incorrect** password. | `WrongPass321` | Input accepted. |
| 3 | Click the 'Log In' button. | N/A | Authentication fails. |

#### **Expected Results**
- User remains on the login page.
- Error message appears: *"The password you’ve entered is incorrect."*
- The password field is highlighted in red.

---
