# Pairwise (All-Pairs) Testing

## 📖 Definition
Pairwise testing is a combinatorial test design technique that aims to test all possible discrete combinations of each pair of input parameters.

## 🛠️ Practical Scenario: Credit Card Eligibility
For a financial application, testing every combination of Employment, Income, and Region is inefficient.

**Variables:**
- Employment (Employed, Student, Retired)
- Income (<$50k, >$50k)
- Province (ON, QC, BC)

**Optimization:**
- **Exhaustive Combinations:** 18
- **Pairwise Combinations:** 9
- **Efficiency Gain:** 50% reduction in test execution time with nearly identical bug-finding confidence.
