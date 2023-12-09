#!/bin/bash

. $HOME/.cache/wal/colors.sh

sudo sed -i 's/dwm.normbordercolor:.*/dwm.normbordercolor: '$background'/g' $HOME/.Xresources
sudo sed -i 's/dwm.normbgcolor:.*/dwm.normbgcolor: '$background'/g' $HOME/.Xresources
sudo sed -i 's/dwm.normfgcolor:.*/dwm.normfgcolor: '$foreground'/g' $HOME/.Xresources
sudo sed -i 's/dwm.selbordercolor:.*/dwm.selbordercolor: '$color14'/g' $HOME/.Xresources
sudo sed -i 's/dwm.selbgcolor:.*/dwm.selbgcolor: '$color7'/g' $HOME/.Xresources
sudo sed -i 's/dwm.selfgcolor:.*/dwm.selfgcolor: '$background'/g' $HOME/.Xresources

sudo sed -i 's/background:.*/background: '\'$background\''/g' $HOME/.config/alacritty/wal.yml
sudo sed -i 's/foreground:.*/foreground: '\'$foreground\''/g' $HOME/.config/alacritty/wal.yml
sudo sed -i 's/\Wcursor:.*/ cursor: '\'$cursor\''/g' $HOME/.config/alacritty/wal.yml
sudo sed -i 's/black:.*/black: '\'$color0\''/g' $HOME/.config/alacritty/wal.yml
sudo sed -i 's/blue:.*/blue: '\'$color1\''/g' $HOME/.config/alacritty/wal.yml
sudo sed -i 's/cyan:.*/cyan: '\'$color2\''/g' $HOME/.config/alacritty/wal.yml
sudo sed -i 's/green:.*/green: '\'$color3\''/g' $HOME/.config/alacritty/wal.yml
sudo sed -i 's/magenta:.*/magenta: '\'$color4\''/g' $HOME/.config/alacritty/wal.yml
sudo sed -i 's/orange:.*/orange: '\'$color5\''/g' $HOME/.config/alacritty/wal.yml
sudo sed -i 's/red:.*/red: '\'$color6\''/g' $HOME/.config/alacritty/wal.yml
sudo sed -i 's/white:.*/white: '\'$color7\''/g' $HOME/.config/alacritty/wal.yml
sudo sed -i 's/yellow:.*/yellow: '\'$color8\''/g' $HOME/.config/alacritty/wal.yml

xrdb $HOME/.Xresources



