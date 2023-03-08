#!/bin/bash

if [ -z "$LANG" ] ; then
  if [ -n "$XDG_CONFIG_HOME" ] && [ -r "$XDG_CONFIG_HOME/locale.conf" ] ; then
    . "$XDG_CONFIG_HOME/locale.conf"
  elif [ -n "$HOME" ] && [ -r "$HOME/.config/locale.conf" ] ; then
    . "$HOME/.config/locale.conf"
  elif [ -r /etc/locale.conf ] ; then
    . /etc/locale.conf
  fi
fi

export LANG=${LANG:-C}
export LC_CTYPE LC_NUMERIC LC_TIME LC_COLLATE LC_MONETARY LC_MESSAGES LC_PAPER LC_NAME LC_ADDRESS LC_TELEPHONE LC_MEASUREMENT LC_IDENTIFICATION
