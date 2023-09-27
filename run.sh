#!/bin/sh
# See xserver bug: https://gitlab.freedesktop.org/xorg/xserver/-/issues/1289
unset XDG_SEAT

Xephyr -br -ac -reset -screen 1280x720 :1 &
sleep 1s
export DISPLAY=:1
Saturn
