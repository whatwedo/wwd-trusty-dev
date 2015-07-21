#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

echo "Rebooting the machine..."
reboot
sleep 60