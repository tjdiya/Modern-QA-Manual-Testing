# Technique: Boundary Value Analysis (BVA)
**Scenario:** Ontario G1 License Age Requirement (16-120 years).

### Test Design
| Test Case ID | Input Value | Expected Result | Boundary Logic |
|---|---|---|---|
| TC01 | 15 | Access Denied | Below Lower Limit (Min-1) |
| TC02 | 16 | Access Granted | **Exact Lower Limit (Min)** |
| TC03 | 17 | Access Granted | Above Lower Limit (Min+1) |
| TC04 | 119 | Access Granted | Below Upper Limit (Max-1) |
| TC05 | 120 | Access Granted | **Exact Upper Limit (Max)** |
| TC06 | 121 | System Error | Above Upper Limit (Max+1) |
