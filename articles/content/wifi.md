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
| Phase 2 Authentication | MSCHAPv2 |
| CA Certificate | Select from file -> `/etc/ssl/certs/ca-certificates.crt` [^1] |
| Domain | uic.edu |
| Identity | **Your UIC NetID** [^2]|
| Anonymous Identity | Anonymous |
| Wireless Password | **Your UIC Password** |

[^1]: If you are having trouble validating using the system CA store, you can also check `No CA certificate is required` to not validate. However, note that you are opening yourself up to potential man-in-the-middle attacks in the process.
[^2]: Your NetID is your UIC email, minus the `@uic.edu`.
