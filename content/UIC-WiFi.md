---
author: Michael Hanif Khan
email: mkhan398@uic.edu
date: April 9th, 2024
title: How to Connect to UIC WiFi on Linux
---

This article assumes that you both have the correct wireless drivers installed, and that you are connecting to the network on UIC's campus.

To connect to our network, make sure that you are connecting to **UIC-WiFi**.

<!-- TODO: Get screenshot of Ubuntu Network Manager GUI for clarity. -->

You should be prompted for the following information:
- EAP Method
- Phase 2 Authentication
- CA Certificate
- Domain
- Identity
- Anonymous Identity
- Wireless Password

Fill all of these fields as such:

| Field | Input |
| ----- | ----- |
| EAP Method | Protected EAP (PEAP) |
| Phase 2 Authentication | MSCHAP |
| CA Certificate | Don't Validate / None |
| Domain | uic.edu |
| Identity | **Your UIC NetID** [^1]|
| Anonymous Identity | Anonymous |
| Wireless Password | **Your UIC Password** |

[^1]: Your NetID is your UIC email, minus the `@uic.edu`.
