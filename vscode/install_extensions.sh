#!/bin/sh

cat ./vscode/extensions | while read line
do
  code --install-extension $line
done