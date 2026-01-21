# 🧪 Test Cases: Password Field Validation
**Module:** User Registration (Signup)  
**Requirement:** Password must be at least 6 characters and should be a mix of letters, numbers, and symbols for security.

---

## 🟢 TC_PASS_01: Valid Password (Positive)
**Description:** Verify that the system accepts a valid password meeting all complexity rules.  
**Priority:** High

| # | Step Description | Test Data | Expected Result |
|:--|:---|:---|:---|
| 1 | Navigate to the Password field. | N/A | Field is focused. |
| 2 | Enter a valid 8-character password. | `Ajax@2026` | Characters are masked (dots). |
| 3 | Complete the form and click 'Sign Up'. | N/A | System accepts input and proceeds to OTP/Verification. |

---

## 🔴 TC_PASS_02: Minimum Length Boundary (Negative)
**Description:** Verify that the system rejects a password with only 5 characters (Below the 6-character limit).  
**Technique:** Boundary Value Analysis (BVA)  
**Priority:** Critical

| # | Step Description | Test Data | Expected Result |
|:--|:---|:---|:---|
| 1 | Navigate to the Password field. | N/A | Field is focused. |
| 2 | Enter exactly 5 characters. | `Abc1!` | Input is accepted in the field. |
| 3 | Click 'Sign Up'. | N/A | **Error Message:** "Your password must be at least 6 characters long." |

---

## 🔴 TC_PASS_03: Weak Password - Numeric Only (Negative)
**Description:** Verify that the system flags/rejects a password consisting only of repetitive numbers.  
**Priority:** Medium

| # | Step Description | Test Data | Expected Result |
|:--|:---|:---|:---|
| 1 | Enter a 6-digit numeric password. | `123456` | Input accepted. |
| 2 | Click 'Sign Up'. | N/A | System shows a "Weak Password" warning or requests a more secure combination. |

---
