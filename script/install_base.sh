#!/usr/bin/env bash

set -euo pipefail

apt update

apt install -y net-tools iputils-ping
