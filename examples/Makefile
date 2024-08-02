# SPDX-License-Identifier: GPL-3.0-only
# JLinux
# JLinux is a linux filesystem patcher that makes linux boot directly into a JAR file.
#
# examples/Makefile
#
# Copyright (C) 2024 0x4248

BUILD_DIRS = hello_world JexerExample

all: clean $(BUILD_DIRS)

clean:
	@for dir in $(BUILD_DIRS); do \
		$(MAKE) -C examples/$$dir clean; \
	done

$(BUILD_DIRS):
	$(MAKE) -C examples/$@ 

.PHONY: all $(BUILD_DIRS)