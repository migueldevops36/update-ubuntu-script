#!/bin/bash
set -euo pipefail

if [[ $EUID -ne 0 ]]; then
	echo "run as root: sudo $0"
	exit 1
fi

echo "updating package list..."
apt update

echo "upgrading package list..."
apt upgrade -y

echo "full upgrade"
apt full-upgrade -y

echo "cleaning..."
apt autoremove -y
apt autoclean -y

echo "Done"




