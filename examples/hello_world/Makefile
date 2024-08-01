# SPDX-License-Identifier: GPL-3.0-only
# JLinux
# JLinux is a linux filesystem patcher that makes linux boot directly into a JAR file.
#
# examples/hello_world/Makefile
#
# Copyright (C) 2024 0x4248

MAIN = HelloWorld.java

all: build

build:
	mkdir -p build
	javac -d build $(MAIN)
	jar cfm boot.jar MANIFEST.MF -C build .


clean:
	rm -rf build boot.jar