# Steps to install

- mkdir ~/.config/awesome && cd !$
- git clone awesome wm widgets by [streetturtle](https://github.com/streetturtle/awesome-wm-widgets/) on github
- download [Arc icons](https://github.com/horst3180/arc-icon-theme#installation) for the battery widget
- copy each files from my dotfiles to their respective directories
- download dmenu
- download brave browser
- download i3lock
- download brightnessctl
	- use it without root permissions: sudo chmod +s $(which brightnessctl)
- git clone https://git.suckless.org/st ~/.config/st
	- common missing dependencies: libx11-dev libxft-dev build-essential
