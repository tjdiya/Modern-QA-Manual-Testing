```mermaid
stateDiagram-v2
    [*] --> Placed
    Placed --> Preparing : Restaurant Accepts
    Preparing --> Shipped : Out for Delivery
    Shipped --> Delivered : Driver Drops Off
    Shipped --> Returned : Customer Rejects
    Delivered --> [*]
    Placed --> Cancelled : User Cancels
```
