# sofware: tmux, brave browser, vim, i3lock, brightnessctl, st
# download awesome WM
git clone https://github.com/awesomeWM/awesome.git
# clone my dotfiles
git clone https://github.com/iren42/dotfiles ~/dotfiles
# create directories for awesome
mkdir ~/.config/awesome && cd !$
# clone AWM widgets
git clone https://github.com/streetturtle/awesome-wm-widgets.git
git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install
# copy Arc folder from arc-icon-theme to /usr/share/icons for system-wide use
sudo cp -R Arc/ /usr/share/icons
# copy config files for tmux and vim
mkdir ~/.vim && cp ~/dotfiles/.vim/vimrc ~/.vim/
mkdir ~/.config/tmux && cp ~/dotfiles/tmux/tmux.conf
# change permission to use brightnessctl
sudo chmod +s $(which brightnessctl)
# clone suckless terminal
git clone https://git.suckless.org/st ~/.config/st

