#!/usr/bin/bash

wallpapers=$(ls ~/.live_wallpaper/ | shuf| tr "\n" "^")

wp1=$(echo $wallpapers | awk -F\^ '{print $1}')
wp2=$(echo $wallpapers | awk -F\^ '{print $2}')
wp3=$(echo $wallpapers | awk -F\^ '{print $3}')

echo $wp1 >> /tmp/mpvpaper.log
echo $wp2 >> /tmp/mpvpaper.log
echo $wp3 >> /tmp/mpvpaper.log

mpvpaper --fork -o "vf=fps=30 profile=sw-fast video-sync=display-resample no-audio  --hwdec=no loop panscan=1.0" 'Chimei Innolux Corporation 0x1621 ' "~/.live_wallpaper/$wp1"
mpvpaper --fork DP-1 -o "vf=fps=30 profile=sw-fast video-sync=display-resample no-audio  --hwdec=no loop" "~/.live_wallpaper/$wp2"
mpvpaper --fork HDMI-A-1 -o "vf=fps=30 profile=sw-fast video-sync=display-resample no-audio  --hwdec=no loop" "~/.live_wallpaper/$wp3"


