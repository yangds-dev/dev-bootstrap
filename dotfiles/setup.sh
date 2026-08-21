#!/usr/bin/env bash

set -euo pipefail

# 获取当前脚本所在目录，确保无论从哪里执行脚本都能正确定位点文件。
dotfiles_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

# 遍历目录中的隐藏文件和隐藏目录；不存在的通配结果会被跳过。
for source in "$dotfiles_dir"/.[!.]* "$dotfiles_dir"/..?*; do
	[[ -e "$source" || -L "$source" ]] || continue
	# setup.sh 是安装脚本本身，不应作为点文件创建软链接。
	[[ "$(basename -- "$source")" == "setup.sh" ]] && continue

	# 在用户主目录中创建与源文件同名的目标路径。
	target="$HOME/$(basename -- "$source")"
	# 强制更新软链接：目标已存在时先替换，避免残留旧配置。
	ln -sfn -- "$source" "$target"
done
