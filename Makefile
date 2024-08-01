# SPDX-License-Identifier: GPL-3.0-only
# JLinux
# JLinux is a linux filesystem patcher that makes linux boot directly into a JAR file.
#
# Makefile
#
# Copyright (C) 2024 0x4248

BUILD = build
SRC = src
SRC_FS = $(SRC)/fs

BOOT_JAR = examples/hello_world/boot.jar

all: build-demos build

docker:
	docker build -t jlinux-buildimage $(SRC)/docker
	docker run -v.:/jlinux -w /jlinux jlinux-buildimage make

build: 
	@echo -e "MKDIR\t$(BUILD)"
	@mkdir -p $(BUILD)
	@echo -e "CP\t$(SRC_FS) -> $(BUILD)"
	@cp -r $(SRC_FS) $(BUILD)
	@echo -e "CP\t$(BOOT_JAR) -> $(BUILD)/fs/jlinux/jars/boot.jar"
	@cp $(BOOT_JAR) $(BUILD)/fs/jlinux/jars/boot.jar
	@echo -e "TAR\t$(BUILD)/fs"
	@cd $(BUILD)/fs && tar -cvf jlinux-patch.tar *
	@echo -e "MV\t$(BUILD)/fs/jlinux-patch.tar -> $(BUILD)"
	@mv $(BUILD)/fs/jlinux-patch.tar $(BUILD)/jlinux-patch.tar
	@echo -e "PATH\t Patch available at $(BUILD)/jlinux-patch.tar"
	@echo -e "Build complete! Whats next? On a base alpine linux machine put the tarball in /root and log in as root. Run the following commands:\n"
	@echo -e "tar -xvf /root/jlinux-patch.tar -C /&& reboot\n"

clean: clean-demos
	@echo -e "RM\t$(BUILD)"
	@rm -rf $(BUILD)

build-demos:
	make -f examples/Makefile

clean-demos:
	make -f examples/Makefile clean

.PHONY: all build build-demos clean-demos docker