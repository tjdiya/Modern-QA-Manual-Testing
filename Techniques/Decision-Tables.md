# Technique: Decision Table Testing
**Scenario:** Promo Code Logic (20% off for New Members spending > $50).

### Logic Table
| Conditions | Rule 1 | Rule 2 | Rule 3 | Rule 4 |
|---|:---:|:---:|:---:|:---:|
| Is New Member? | T | T | F | F |
| Spend > $50? | T | F | T | F |
| **Actions** | | | | |
| Apply 20% Discount | X | | | |
| Standard Price | | X | X | X |
