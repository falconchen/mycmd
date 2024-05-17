#!/bin/env bash
function phprestart {
  # 如果没有提供版本号，则从`php --version`命令获取
  local phpversion="${1:-$(php --version | head -n 1 | grep -oP '\d+\.\d+')}"
  # 检查plist文件是否存在
  local plist_file="$HOME/Library/LaunchAgents/homebrew.mxcl.php@${phpversion}.plist"
  if [[ ! -f "${plist_file}" ]]; then
    echo "错误：文件 ${plist_file} 不存在。"
    exit 1
  fi
  # 停止并重启PHP服务
  launchctl bootout gui/$(id -u) "${plist_file}" && \
  launchctl bootstrap gui/$(id -u) "${plist_file}"
  # 打印出当前的PHP服务状态
  launchctl list | grep php
}


