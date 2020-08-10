#!/bin/bash

# 特定のOSに固有のコマンド確認することでOSを特定する
# 制約: 管理者が街灯の名前のコマンドを生成したり追加したりできないため、確実な手法ではない

if typ -t wevtutil &> /dev/null
then
  OS=MSWin
elif type -tt scutil &> /dev/null
then
  OS=macOS
else
  OS=Linux
fi
echo $OS
