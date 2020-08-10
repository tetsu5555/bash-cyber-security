#!/bin/bash

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
