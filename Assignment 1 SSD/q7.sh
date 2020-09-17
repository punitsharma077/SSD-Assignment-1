#!/bin/bash
ps -au | awk '!/PID/ {print $2}' > pid.txt|sort pid.txt

read n
head -$n pid.txt