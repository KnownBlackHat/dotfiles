#!/usr/bin/bash

wallpapers=$(ls ~/.live_wallpaper/ | shuf| shuf | tr "\n" "^")

wp1=$(echo $wallpapers | awk -F^ '{print $1}')
wp2=$(echo $wallpapers | awk -F^ '{print $2}')
wp3=$(echo $wallpapers | awk -F^ '{print $3}')

echo $wp1
echo $wp2
echo $wp3

mpvpaper --fork -o "no-audio --cache=yes --demuxer-max-bytes=10MiB --hwdec=auto loop panscan=1.0" 'Chimei Innolux Corporation 0x1621 ' "~/.live_wallpaper/$wp1"
mpvpaper --fork DP-1 -o "no-audio --cache=yes --demuxer-max-bytes=10MiB --hwdec=auto loop" "~/.live_wallpaper/$wp2"
mpvpaper --fork HDMI-A-1 -o "no-audio --cache=yes --demuxer-max-bytes=10MiB --hwdec=auto loop" "~/.live_wallpaper/$wp3"


