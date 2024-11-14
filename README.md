<!--
 Copyright (c) 2024 innodisk Crop.
 
 This software is released under the MIT License.
 https://opensource.org/licenses/MIT
-->

- [Overview](#overview)
- [Requirement](#requirement)
- [Build](#build)
- [Run](#run)
- [FAQ](#faq)

# Overview
A simple tool for USB2.0 & USB3.0 compliance test under linux OS.

# Requirement
- libusb

# Build
```bash
make 
```

# Run
Reset the power of system between each test.
1. Using lsusb to check the USB topology of the system.
    ```bash
    lsusb -t
    ```
2. Run `USB_TEST_MODE`.
    ```bash
    sudo ./USB_TEST_MODE
    ```
3. Select the USB device.
4. Select the test mode if device is USB2.0.
5. Select which port to enter the test mode. The number of port can follow the datasheet of the USB device.
6. Done, now user can check the wavefrom for the compliance test. 

# FAQ
- Which test case should I use.  
    Generally suggest using `Packet`.

- What if the function not working under linux OS.  
    Using `usb test` at u-boot, for example `usb test 1 1 P`
