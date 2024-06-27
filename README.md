# M Koushan dotfiles
my dotfiles for Arch Linux.

## Requirements
* [Arch Linux](https://archlinux.org) - Operating system
* [tui-greetd](https://wiki.archlinux.org/title/greetd) - Login manager
* [Hyprland](https://wiki.archlinux.org/title/Hyprland) - Window manager
* [Dunst](https://wiki.archlinux.org/title/Dunst) - Notification daemon
* [Eww](https://elkowar.github.io/eww/) - Widgets
* [QTerminal](https://github.com/lxqt/qterminal) - Terminal
* [Bash](https://wiki.archlinux.org/title/Bash) - Shell
* [Starship](https://starship.rs/) - Shell promt
* [Vim](https://wiki.archlinux.org/title/Vim) - Text editor
* [Vifm](https://wiki.archlinux.org/title/vifm) - File manager
* [Vimiv](https://karlch.github.io/vimiv/) - Image viewer
* [KeePassXC](https://wiki.archlinux.org/title/KeePass) - Password Manager
* [sshpass](https://archlinux.org/packages/extra/x86_64/sshpass/) - SSH management
* [Syncthing](https://wiki.archlinux.org/title/Syncthing) - Sync your linux and android
* [Libreoffice](https://wiki.archlinux.org/title/LibreOffice) - Document viewer
* [PipeWire](https://wiki.archlinux.org/title/PipeWire) - Mutlimedia framework
* [WirePlumber](https://wiki.archlinux.org/title/WirePlumber) - Pipewire session manager
* [Git](https://wiki.archlinux.org/title/Git) - Version control system
* Fonts: [FreeSans](https://www.gnu.org/software/freefont/), [FiraCode Nerd](https://www.nerdfonts.com/font-downloads), [Sahel](https://github.com/rastikerdar/sahel-font)
* Arc Theme(GTK)
* Papirus Icon Theme
* Grim & Slurp - Screenshot
* wl-clipboard - Wayland clipboard manager
* brightnessctl

### Bash scripts requirements
* jq - JSON management
* bash-compilition
* gnu-netcat

## Installation

### Pacman stuff:

```bash
sudo pacman -Syu
sudo pacman -S --needed base-devel git dunst qterminal pipewire pipewire-alsa starship gnu-free-fonts firefox-developer-edition hyprland hypridle hyprpaper syncthing keepassxc jq bash-compilition gnu-netcat vim vifm wl-clipboard grim slurp arc-gtk-theme papirus-icon-theme sshpass ttf-firacode-nerd ttf-nerd-fonts-symbols udiskie unrar unzip vimiv brightnessctl wireplumber qt5-wayland qt6-wayland ntfs-3g libreoffice-fresh networkmanager
sudo systemctl enable --now NetworkManager.service

# This command will log out you from current logged in session
sudo systemctl enable --now greetd.service
```
### AUR stuff:

#### Install yay (Optional)

```bash
git clone --depth=1 https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

```

```bash
# Replace yay with your AUR helper, or install the packages manually
yay -S eww mihomo-bin sahel-fonts

# Required for TUN mode to work
sudo setcap 'cap_net_admin,cap_net_bind_service=+ep' /usr/bin/mihomo 

```
## License
[CC-BY-SA-4.0](https://spdx.org/licenses/CC-BY-SA-4.0.html)
