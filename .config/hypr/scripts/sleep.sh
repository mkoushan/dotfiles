sudo pkill swayidle
sudo pkill swaylock
swayidle -w timeout 300 'swaylock -f -c 000000' \
            timeout 700 'systemctl suspend' \
            before-sleep 'swaylock -f -c 000000' &
