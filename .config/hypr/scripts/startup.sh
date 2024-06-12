asusctl -c 80

wpctl set-volume @DEFAULT_AUDIO_SINK@ 50%
wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 0

pkill udiskie
udiskie -ant &

pkill sslocal
sslocal -b "127.0.0.1:1080" -c ~/config.json &

sleep 0.5 && $XDG_CONFIG_HOME/eww/scripts/init
$HOME/.config/hypr/scripts/sleep.sh
