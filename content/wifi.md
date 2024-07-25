---
author: Michael Hanif Khan
email: mkhan398@uic.edu
date: April 9th, 2024
title: How to Connect to UIC WiFi on Linux
---

This article assumes that you both have the correct wireless drivers installed, and that you are connecting to the network on UIC's campus.

To connect to the main wireless network on campus, make sure that you are connecting to **UIC-WiFi**.

![A user with a KDE desktop connecting to UIC WiFi via the GUI on Fedora.](static/UIC-WiFi/uic-connection-example.png)
![A user with a GNOME desktop connecting to UIC WiFi.](static/UIC-WiFi/gnome-wifi.png)

When attempting to connect to the network, you will be prompted for the following information:

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
