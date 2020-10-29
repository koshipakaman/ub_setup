sudo echo "/usr/bin/fish" >> /etc/shells
chsh -s /usr/bin/fish
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

# fisher add oh-my-fish/theme-bobthefish
# fisher add oh-my-fish/plugin-peco
# fisher add jethrokuan/z
# fisher add Orax/fish-bd
