# Test Scenarios: Facebook Signup Module

## 🚀 Overview
This document outlines the high-level test scenarios for the Facebook Signup process. It covers both positive "Happy Path" flows and negative "Edge Case" validations to ensure system robustness and data integrity.

---

## 🟢 Positive Scenarios (Happy Path)
*Ensuring the system functions correctly when provided with valid data.*

| Scenario ID | Description | Technique | Priority |
| :--- | :--- | :--- | :--- |
| **TS_P01** | Validate signup with a valid 10-digit mobile number. | Functional | High |
| **TS_P02** | Validate signup with a valid email address (e.g., user@example.com). | Functional | High |
| **TS_P03** | Validate mobile number entry with and without country codes (+1). | Input Normalization | Medium |
| **TS_P04** | Validate signup for the minor age range (13 - 17 years old). | Equivalence Partitioning | Medium |
| **TS_P05** | Validate signup for the adult age range (18 - 120 years old). | Equivalence Partitioning | High |
| **TS_P06** | Validate signup with different gender values (Female, Male, Custom). | Functional | Low |
| **TS_P07** | Validate signup with a password meeting all complexity requirements. | Security | High |

---

## 🔴 Negative Scenarios (Edge Cases & Validation)
*Ensuring the system handles errors gracefully and prevents invalid data entry.*

### 1. Mandatory Field Validation
| Scenario ID | Description | Expected Result |
| :--- | :--- | :--- |
| **TS_N01** | Leave 'First Name' field empty. | Error: "What's your name?" |
| **TS_N02** | Leave 'Surname' field empty. | Error: "What's your name?" |
| **TS_N03** | Leave 'Mobile number or email' field empty. | Error: "You'll use this when you log in..." |
| **TS_N04** | Leave 'Password' field empty. | Error: "Enter a combination of at least six..." |
| **TS_N05** | Leave 'Gender' selection empty. | Error: "Please choose a gender." |

### 2. Data Integrity & Boundary Values
| Scenario ID | Description | Technique | Expected Result |
| :--- | :--- | :--- | :--- |
| **TS_N06** | Enter First Name/Surname exceeding 50 characters. | **BVA** | Field truncation or Error |
| **TS_N07** | Enter an extremely short mobile number (< 10 digits). | **BVA** | Error: Invalid Mobile Number |
| **TS_N08** | Enter an excessively long mobile number (> 15 digits). | **BVA** | Error: Invalid Mobile Number |
| **TS_N09** | Enter email with invalid format (missing '@' or domain). | Regex Validation | Error: Invalid Email |
| **TS_N10** | Enter age less than 13 (e.g., 12 years old). | **BVA** | Account creation blocked |
| **TS_N11** | Enter age exceeding 120 years. | **BVA** | Error: Invalid Date |

### 3. Password Security Logic
| Scenario ID | Description | Technique | Expected Result |
| :--- | :--- | :--- | :--- |
| **TS_N12** | Enter password less than 6 characters. | **BVA** | Error: Password too short |
| **TS_N13** | Enter password consisting only of letters (no numbers). | Complexity Check | Error: Weak password |
| **TS_N14** | Enter password consisting only of numbers (no letters). | Complexity Check | Error: Weak password |
| **TS_N15** | Enter password without any special characters. | Complexity Check | Error: Weak password |

---

## 🛠️ Technical Notes for Portfolio
As a tester with a development background, I prioritize these scenarios to ensure that:
1. **Frontend Validation:** Provides immediate feedback to the user (UX).
2. **Backend Validation:** Prevents malformed data from reaching the database (Data Integrity).
3. **Security:** Password complexity and age gates are enforced via server-side logic to prevent bypass.
