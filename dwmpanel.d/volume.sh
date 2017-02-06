#! /bin/sh
#
# Volume bar for bar

#VOL=$(amixer get Master -M | grep -m 1 "Mono: Playback" | cut -d " " -f 5)
VOL=$(amixer get Master -M | grep -oE "[[:digit:]]*%" | cut -d % -f 1)
echo "V$VOL" > $PANEL_FIFO
