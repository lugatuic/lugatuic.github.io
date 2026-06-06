---
author:
- Neko
date: 2024-10-02
subtitle: Linux Week
title: What's Linux and How Can I Use It?
---
# What's Linux?
**Linux** is a free and open-source operating system kernel. Linux
is part of a family of operating systems that bundle various pieces of
software to form a complete OS, called [Linux distros]{.underline}.
![Tux, the Linux mascot](/static/linux-week/what-linux-and-install/tux.svg){width="90%"}

## Why Linux?
-   It's truly free!
    -   Anyone can view, modify, and redistribute the the kernel and its
        underlying source code.
    -   It's actually libre/available for no charge.[^1]
-   Linux powers millions of devices like Android smartphones,
    Chromebooks, and even the **top 500** supercomputers in the world!
-   Unix-like systems like Linux are widespread in academia. Learning
    its usage is beneficial to your research and coursework!
-   Linux systems are tailored to software development, programming and
    installing dependencies is far easier on Linux than other operating
    systems.
-   It's [not]{.underline} Windows.
    -   Or macOS either\...

# 5 Reasons to Use Linux
![image](/static/linux-week/what-linux-and-install/why_you_should_use_linux.pdf){width=100%}

# How to Install Linux
## Recommended Distro
Choosing a Linux distro is [hard]{.underline}.

![image](/static/linux-week/what-linux-and-install/distrowatch.png){width="\\textwidth"}

For simplicity, we recommend a *Debian-based distribution*. Why?
Because distros like Ubuntu, Debian, Linux Mint make up almost half of
all Linux installs.

## Downloading Linux
Out of the listed Debian-based distros, **Ubuntu** is
by far the most popular. You can download it from Canonical's website
here\...

![image](/static/linux-week/what-linux-and-install/ubuntu-logo.svg){width="90%"}

![<https://ubuntu.com/download/desktop>](/static/linux-week/what-linux-and-install/ubuntu.svg){width="90%"}

## Installing Linux
To install Linux, you need to create a [bootable USB
drive]{.underline}. Tools like Rufus can do this for you.

![<https://rufus.ie/en/>](/static/linux-week/what-linux-and-install/rufus.png){width="25%"}

There are some important caveats when trying Linux on
[your machine]{.underline}.

-   Installing Linux typically means [wiping you hard
    drive]{.underline}, if you have important files do not do this
    without backing up first.
-   Dual-booting Linux and Windows takes some extra care. If you want to
    do this setup, consult a LUG officer for more help.
-   If you installed Windows with **Secure Boot** and **Bitlocker**, you
    **must not** disable secure boot or you will need a recovery key
    from your Microsoft account to decrypt your data.
-   If you are on an ARM Macbook (M1, M2, etc.), Linux support is
    considered alpha quality. Look into *Asahi Linux*.

## Using Linux Without Installing

### Methods
You don't *have* to install Linux on your machine to learn how
to use it. Consider these alternative methods too:

-   Virtual Machine using VMWare or Virtualbox
-   (Windows) WSL2
-   Using a Remote Server

#### Virtual Machines
Virtual Machine software like VMWare or Virtualbox are
perfectly good ways to use Linux!

-   VMWare Player
    <https://www.vmware.com/products/desktop-hypervisor/workstation-and-fusion>
-   Virtualbox <https://www.virtualbox.org/>

![image](/static/linux-week/what-linux-and-install/vm.png){width="75%"}

#### WSL
If you're on Windows 10 or newer, you can use WSL to get a Linux
install on your Windows system.

Run `wsl –-install` in **Powershell**.

![image](/static/linux-week/what-linux-and-install/wsl.png){width="80%"}

#### Remote Server
If all else fails, you can always use other people's Linux
servers too. For example, UIC offers **4** Ubuntu servers for students
to use.

Example Connect to a `systems<1..4>.cs.uic.edu` server! In your
Terminal/Powershell, run `ssh <netid>@systems<1..4>.cs.uic.edu`\
Where\...

-   `<netid>` is your email without the \@uic.edu
-   `<1..4>` is a number between 1 and 4

When prompted for a password, enter your [my.uic.edu](/static/linux-week/what-linux-and-install/my.uic.edu){.uri}
password.

## Closing Remarks

### Thank you!

**Officers**

![image](/static/linux-week/what-linux-and-install/officers.png){width="60%"}

The information in this presentation will be made available on our
website!\
<https://lug.cs.uic.edu>

Join our Discord!

![<https://discord.gg/NgxTR7PX5e>](/static/linux-week/what-linux-and-install/lug-discord.svg){width="50%"}

[^1]: most of the time
