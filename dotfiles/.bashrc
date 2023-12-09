#
# ~/.bashrc
#
#if [[ `ps ho command $(ps ho ppid $$)` == 'alacritty' ]]; then
#clear
#fi
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

prompt_color='\[\033[0;34m\]'
(cat ~/.cache/wal/sequences &)
echo \[ $(date | grep -Eo "^[a-zA-Z][a-zA-Z][a-zA-Z]\W[a-zA-Z][a-zA-Z][a-zA-Z].*[A-Z]") \]
echo ' '

alias wpa_start='sudo wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf && sudo wpa_cli enable_network 1'
alias packages='neofetch packages | grep -Eo "[0-9].*[0-9]"'
alias lf='lf-ueberzug /home/lumi/'
alias smci='sudo make clean install'
alias paranoia='echo "This file will be DELETED! Proceed?" ; read $ans && sudo shred -n 5 -fzvu'
alias wrt='cat << EOF >'
alias acp-gen='git add -A . && git commit -m "oke" && git push'
alias restore-monitor='xrandr --output HDMI1 --mode 1920x1080 && xrandr --output HDMI1 --left-of eDP1 && wallpaper wallpaper.jpg'
alias py='python'
alias color-steel='cp /home/lumi/.config/alacritty/steel.yaml /home/lumi/.config/alacritty/main.yaml'
alias color-seashells='cp /home/lumi/.config/alacritty/seashells.yaml /home/lumi/.config/alacritty/main.yaml'
alias color-kanagawawave='cp /home/lumi/.config/alacritty/kanagawa-wave.yaml /home/lumi/.config/alacritty/main.yaml'
alias color-gruvboxdark='cp /home/lumi/.config/alacritty/gruvbox-dark.yaml /home/lumi/.config/alacritty/main.yaml'
alias color-remedydark='cp /home/lumi/.config/alacritty/remedy-dark.yaml /home/lumi/.config/alacritty/main.yaml'
alias color-everforest='cp /home/lumi/.config/alacritty/everforest-dark.yaml /home/lumi/.config/alacritty/main.yaml'
alias color-rosepine='cp /home/lumi/.config/alacritty/rose-pine.yaml /home/lumi/.config/alacritty/main.yaml'
alias color-hardhacker='cp /home/lumi/.config/alacritty/hardhacker.yaml /home/lumi/.config/alacritty/main.yaml'
alias color-meliora='cp /home/lumi/.config/alacritty/meliora.yaml /home/lumi/.config/alacritty/main.yaml'
alias color-catppuccin='cp /home/lumi/.config/alacritty/catppuccin-mocha.yml /home/lumi/.config/alacritty/main.yaml'
alias color-lmao='cp /home/lumi/.config/alacritty/lmao.yml /home/lumi/.config/alacritty/main.yaml'
alias color-test='cp /home/lumi/.config/alacritty/test.yaml /home/lumi/.config/alacritty/main.yaml'
alias edit-main='vim /home/lumi/.config/alacritty/main.yaml'
alias edit-alacritty='vim /home/lumi/.config/alacritty/alacritty.yml'
alias wallpaper='feh --bg-fill'
alias xresources='vim /home/lumi/.Xresources'
alias bashrc='vim /home/lumi/.bashrc'
alias gcc='gcc -time'
alias cp='cp -rvi'
alias fetch='neofetch -L'
alias pwr='sudo openrc-shutdown --poweroff now'
alias xb='xrdb /home/lumi/.Xresources'
alias ls='ls -ha --color=auto '
alias grep='grep --color=auto'
alias ip='ip --color=auto'

#PS1='[\u@\h \W]\$ '
#PS1='\u.\H:/\W > '
#PS1='❯❯❯ '
PS1=$prompt_color'[\W] \[\033[1;36m\]❯❯❯ \[\033[0m\]'
unset prompt_color
export PATH="/home/lumi/.local/bin:$PATH"
export PATH="${PATH}:${HOME}/.local/bin/"
