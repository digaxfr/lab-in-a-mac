#!/bin/bash -e

exec python3 -m http.server 8000 &>/dev/null &
echo $! > /tmp/http.pid
