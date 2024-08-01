# SPDX-License-Identifier: GPL-3.0-only
# JLinux
# JLinux is a linux filesystem patcher that makes linux boot directly into a JAR file.
#
# src/docker/Dockerfile
#
# Copyright (C) 2024 0x4248

FROM alpine:3.14

RUN apk update
RUN apk add gcc make --no-cache
RUN apk add openjdk11 openjdk11-jre openjdk11-jmods openjdk11-jdk --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

WORKDIR /jlinux

CMD [ "/bin/sh" ]