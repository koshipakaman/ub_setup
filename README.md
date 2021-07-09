# ub_setup

## hybrid-sleep
https://wiki.archlinux.jp/index.php/%E9%9B%BB%E6%BA%90%E7%AE%A1%E7%90%86

/etc/systemd/sleep.conf

[Sleep]
# suspend=hybrid-sleep
SuspendMode=suspend
SuspendState=disk
# hibernate=hybrid-sleep
HibernateMode=suspend
HibernateState=disk

## apt
```bash
cat apt_requirements.txt | xargs sudo apt -y install
```

## fish
シェル

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install -y fish

# fisher
プラグイン管理

curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

.bachrc
exec fish

各種
fisher install oh-my-fish/theme-bobthefish
fisher install oh-my-fish/plugin-peco
fisher install jethrokuan/z
fisher install tsu-nera/fish-peco_recentd
fisher install jethrokuan/fzf
fisher install 0rax/fish-bd

# lsd
https://github.com/Peltoche/lsd

# fonts
nerd-fonts
https://github.com/ryanoasis/nerd-fonts#font-installation

powerline
awesome
unifonts

## i3
タイル型ウィンドウマネージャ
非常に軽量で，キーボードだけで動作が完結する
拡張性も高い

参考
https://tonooo71.github.io/2020/200327_i3_arch_linux_setup/

## fcitx-mozc
~/.profile　末尾に以下を追加
export DefaultImModule=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

句読点の設定
/usr/lib/mozc/mozc_tool --mode=config_dialog

## polybar
参考：for Ubuntu 18.04
https://gist.github.com/kuznero/f4e983c708cd2bdcadc97be695baacf8

権限付与を忘れずに
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/polybar/connections.sh

TODO: font:siji

## vim (NeoVim)
linter(ALE)がNeovim4以上じゃないと動作しないため，aptでinstallせず，ソースから最新版をビルドする．

ninjaもインストールしておく
https://github.com/ninja-build/ninja

git clone https://github.com/neovim/neovim.git

前提パッケージ
https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites
Install from sourceのとこ
https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source

### dein
source dein.sh

## python
仮想環境
python3 -m venv {env_name}
source {env_name}/bin/activate.fish

if bash
(source {env_name}/bin/activate)

.bashrcに上記を追加しておく

必ず--upgradeしてから
pip install --upgrade pip setuptools

pip install -r pip_requirements.txt


## tex


