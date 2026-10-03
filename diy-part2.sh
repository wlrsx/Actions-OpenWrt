#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# set -euo pipefail

# PATCH_DIR="$GITHUB_WORKSPACE/patches"

# if compgen -G "$PATCH_DIR/*.patch" > /dev/null; then
#   for p in "$PATCH_DIR"/*.patch; do
#     echo ">>> 应用补丁: $(basename "$p")"
#     if ! git apply --check "$p"; then
#       echo "::error::补丁 $(basename "$p") 与当前上游源码冲突,需要重新生成"
#       exit 1
#     fi
#     git apply "$p"
#   done
# fi

# git status --short   # 日志里确认哪些文件被改了