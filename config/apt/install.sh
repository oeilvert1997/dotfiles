#!/bin/bash
set -eux

apt-get update
apt-get upgrade -y
apt-get install -y --no-install-recommends \
  build-essential \
  curl \
  file \
  git \
  procps \
  zsh
