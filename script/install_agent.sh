#!/usr/bin/env bash

# 安装 nvm、Node.js LTS，以及 Codex、Claude Code 和 cc-switch。
# 脚本可以重复执行，npm 会处理已安装包的更新。
set -euo pipefail

# nvm 通过 shell 函数工作，需要先加载到当前脚本环境。
# https://github.com/nvm-sh/nvm 找到对应的最新安装脚本
export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"
if [[ ! -s "$NVM_DIR/nvm.sh" ]]; then
	echo "正在安装 nvm..."
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.7/install.sh | bash
fi

# shellcheck disable=SC1090
source "$NVM_DIR/nvm.sh"

# 安装并启用 Node.js 长期支持版，同时设为默认版本。
echo "正在安装 Node.js LTS..."
nvm install --lts
# nvm alias default 'lts/*'
# nvm use --lts

# 使用 npm 全局安装 OpenAI Codex、Anthropic Claude Code
echo "正在安装 Codex、Claude Code 和 cc-switch..."
npm install --global @openai/codex @anthropic-ai/claude-code

# 安装 cc-switch cli
curl -fsSL https://github.com/SaladDay/cc-switch-cli/releases/latest/download/install.sh | bash

echo "安装完成。"
