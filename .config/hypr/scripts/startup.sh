asusctl -c 60

sleep 0.3 && $XDG_CONFIG_HOME/eww/scripts/init
$HOME/.config/hypr/scripts/sleep.sh

wpctl set-volume @DEFAULT_AUDIO_SINK@ 70%
wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 0

pkill telegram-desktop
telegram-desktop -- &

pkill udiskie
udiskie -ant &

pkill copyq
copyq &

sudo pkill neko
sudo -EH nekoray -- -appdata &
