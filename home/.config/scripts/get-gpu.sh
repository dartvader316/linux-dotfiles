#!/bin/bash
output=$(glxinfo|egrep "OpenGL vendor|OpenGL renderer" | grep -Eo '\bNVIDIA\b|\bINTEL\b|\bAMD\b|\bIntel\b' | head -n 1)
echo "${output}"
