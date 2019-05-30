#!/bin/sh
output=$(optimus-manager --print-mode | grep -Eo '\bnvidia\b|\bintel\b')
echo "${output}"