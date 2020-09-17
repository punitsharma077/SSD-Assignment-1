#!/bin/bash
HISTFILE=~/.bash_history
set -o history

history 10 | awk '{c[$2]++} END {for (x in c) print x,c[x]}'| sort -r -k2



