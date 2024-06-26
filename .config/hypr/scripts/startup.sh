asusctl -c 80

wpctl set-volume @DEFAULT_AUDIO_SINK@ 50%
wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 0

pkill udiskie
udiskie -ant &
$HOME/.config/gtk-3.0/import-gsettings

cd $HOME/.config/mihomo
mihomo_config="config.yaml"
if [ -f "$mihomo_config" ]; then
   file_time=$(stat -c %Y "$mihomo_config")
   current_time=$(date +%s)
   threshold=$((current_time - 43200)) # 12 hours in seconds

   if [ $file_time -lt $threshold ]; then
      ./update
   fi
fi
sed -i 's/enable: true/enable: false/' $mihomo_config
pkill mihomo
mihomo &

sleep 0.5 && $XDG_CONFIG_HOME/eww/scripts/init
$HOME/.config/eww/scripts/apps
$HOME/.config/hypr/scripts/sleep.sh
