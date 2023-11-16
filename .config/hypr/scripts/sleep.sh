sudo pkill swayidle
sudo pkill swaylock
swayidle -w timeout 300 'swaylock -f -c 000000' \
            timeout 500 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on' \
            timeout 700 'systemctl suspend' \
            before-sleep 'swaylock -f -c 000000' &
