#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cp "$DIR"/90-xsens.rules /etc/udev/rules.d/
udevadm control --reload-rules
udevadm trigger
