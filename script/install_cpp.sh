#!/usr/bin/env bash

set -euo pipefail

apt update

apt install -y gcc g++ gdb make cmake bear clang clangd clang-format