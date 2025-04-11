#!/usr/bin/env bash

set -x

dnf install -y \
  anaconda \
  anaconda-install-env-deps \
  anaconda-live

systemctl disable uupd.timer
systemctl --global disable podman-auto-update.timer
systemctl disable rpm-ostree.service
systemctl disable uupd.timer
systemctl disable check-sb-key.service
