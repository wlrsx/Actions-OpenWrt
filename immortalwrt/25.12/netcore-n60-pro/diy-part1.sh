#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# ================= 替换 Netcore N60 Pro 自定义 DTS 分区表 =================
MY_DTS="${GITHUB_WORKSPACE}/dts/mt7986a-netcore-n60-pro/400mb+100mb.dts"
TARGET_DTS=$(find target/linux/mediatek -name "mt7986a-netcore-n60-pro.dts" -print -quit)

if [ -f "$MY_DTS" ]; then
    if [ -n "$TARGET_DTS" ]; then
        echo "✅ 找到目标 DTS 文件: $TARGET_DTS"
        # 强制覆盖 (-f)
        cp -f "$MY_DTS" "$TARGET_DTS"
        echo "🚀 成功将 400mb+100mb.dts 覆盖至系统源码！"
    else
        echo "❌ 错误: 在源码 target/linux/mediatek/ 下未找到 N60 Pro 的 DTS 文件！"
        exit 1
    fi
else
    echo "❌ 错误: 你的 GitHub 仓库里没有找到 $MY_DTS 文件，请检查路径和大小写！"
    exit 1
fi