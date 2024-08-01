#!/bin/sh
# SPDX-License-Identifier: GPL-3.0-only
# JLinux
# JLinux is a linux filesystem patcher that makes linux boot directly into a JAR file.
#
# src/extra/UTM_patch.sh
#
# Copyright (C) 2024 0x4248

# ON HOST: cd build && python3 -m http.server 8080 && cd ..

wget 192.168.64.1:8080/jlinux-patch.tar -O /root/jlinux-patch.tar && tar -xvf /root/jlinux-patch.tar -C / && rm /root/jlinux-patch.tar && reboot