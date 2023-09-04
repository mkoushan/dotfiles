asusctl -c 60

wpctl set-volume @DEFAULT_AUDIO_SINK@ 70%
wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 0

sudo -EH nekoray &
telegram-desktop &

