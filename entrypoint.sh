#!/usr/bin/env bash
set -e

sed -i "s/stdio.*ipc.*/stdio: ['inherit', 'inherit', 'pipe']/" /usr/local/lib/node_modules/electron-pdf/cli.js

export DISPLAY=':99.0'
Xvfb :99 -screen 0 1024x768x24 > /dev/null 2>&1 &

exec electron-pdf "$@"
