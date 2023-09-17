asusctl -c 60

wpctl set-volume @DEFAULT_AUDIO_SINK@ 70%
wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 0

pkill telegram-desktop
telegram-desktop -- &

sudo pkill neko
sudo -EH nekoray -- -appdata &
