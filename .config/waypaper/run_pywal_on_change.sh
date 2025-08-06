#!/bin/bash
current_wallpaper=$(grep "wallpaper" ~/.config/waypaper/config.ini | cut -d '=' -f2 | tail -1 | xargs | sed "s|~|$HOME|")
if [ -f "$current_wallpaper" ]; then
    wal -i "$current_wallpaper"
fi
