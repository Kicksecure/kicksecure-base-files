#!/bin/bash

## Copyright (C) 2012 - 2025 ENCRYPTED SUPPORT LLC <adrelanos@whonix.org>
## See the file COPYING for copying conditions.

export KICKSECURE=1

if [ -z "$XDG_CONFIG_DIRS" ]; then
  XDG_CONFIG_DIRS="/etc:/etc/xdg:/usr/share"
fi

if ! printf '%s\n' "$XDG_CONFIG_DIRS" | grep -- "/usr/share/kicksecure" >/dev/null 2>/dev/null; then
  export XDG_CONFIG_DIRS="/usr/share/kicksecure/:$XDG_CONFIG_DIRS"
fi
