asusctl -c 80

wpctl set-volume @DEFAULT_AUDIO_SINK@ 50%
wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 0

#pkill telegram-desktop
#sudo -EH telegram-desktop -- &

#pkill udiskie
#udiskie -ant &

sudo pkill v2raya
sudo -EH v2raya -- &

swaybg -i ~/wp.jpg

sleep 0.3 && $XDG_CONFIG_HOME/eww/scripts/init
$HOME/.config/hypr/scripts/sleep.sh
